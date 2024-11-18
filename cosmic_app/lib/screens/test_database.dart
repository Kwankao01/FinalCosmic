import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TestPage extends StatefulWidget {
  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<Post> posts = [];
  bool isLoading = false;
  PostController controller = PostController(PostFirebaseService());

  @override
  void initState() {
    super.initState();

    // Listen for sync state changes
    controller.onSync.listen((bool syncState) {
      setState(() {
        isLoading = syncState;
      });
    });
  }

  // Fetch posts from Firestore
  void _getPosts() async {
    var newPosts = await controller.fetchPosts();
    setState(() {
      posts = newPosts;
    });
  }

  // UI for displaying the list of users
  Widget get body => isLoading
      ? CircularProgressIndicator()
      : ListView.builder(
          itemCount: posts.isNotEmpty ? posts.length : 1,
          itemBuilder: (context, index) {
            if (posts.isNotEmpty) {
              return ListTile(
                title: Text(posts[index].username),
                subtitle: Text(
                    'Zodiac: ${posts[index].zodiacsign}, Birthdate: ${posts[index].birthdate}'),
              );
            }
            return Center(
              child: Text("Tap the button to fetch users"),
            );
          },
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: Center(
        child: body,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getPosts,
        child: Icon(Icons.refresh),
      ),
    );
  }
}

class Post {
  int userid;
  String username;
  String birthdate;
  String zodiacsign;
  String dbId;

  Post(this.userid, this.username, this.birthdate, this.zodiacsign,
      {this.dbId = ""});

  // Factory constructor to create a Post from Firestore snapshot
  factory Post.fromSnapshot(Map<String, dynamic> json) {
    return Post(
      json['userid'] ?? 0,
      json['username'] ?? '',
      json['birthdate'] ?? '',
      json['zodiacsign'] ?? '',
    );
  }

  // Factory constructor to create a Post from JSON data
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      json['userid'] ?? 0,
      json['username'] ?? '',
      json['birthdate'] ?? '',
      json['zodiacsign'] ?? '',
    );
  }
}

class AllPosts {
  final List<Post> posts;
  AllPosts(this.posts);

  // Factory constructor to create AllPosts from a Firestore QuerySnapshot
  factory AllPosts.fromSnapshot(QuerySnapshot qs) {
    List<Post> posts = qs.docs.map((DocumentSnapshot ds) {
      Post post = Post.fromSnapshot(ds.data() as Map<String, dynamic>);
      post.dbId = ds.id;
      return post;
    }).toList();

    return AllPosts(posts);
  }

  // Factory constructor to create AllPosts from JSON data
  factory AllPosts.fromJson(List<dynamic> json) {
    List<Post> posts = json.map((item) => Post.fromJson(item)).toList();
    return AllPosts(posts);
  }
}

abstract class PostService {
  Future<List<Post>> getPosts();
  void updatePost(Post post);
  Future<Post> addPost(Post post);
}

class PostFirebaseService implements PostService {
  Future<List<Post>> getPosts() async {
    QuerySnapshot qs =
        await FirebaseFirestore.instance.collection('users').get();
    AllPosts all = AllPosts.fromSnapshot(qs);
    return all.posts;
  }

  @override
  Future<Post> addPost(Post post) {
    // TODO: implement addPost
    throw UnimplementedError();
  }

  @override
  void updatePost(Post post) {
    // TODO: implement updatePost
  }
}

class PostController {
  List<Post> posts = List.empty();
  final PostService service;

  StreamController<bool> onSyncController = StreamController();
  Stream<bool> get onSync => onSyncController.stream;

  PostController(this.service);

  Future<List<Post>> fetchPosts() async {
    onSyncController.add(true);
    posts = await service.getPosts();
    onSyncController.add(false);
    return posts;
  }
}
