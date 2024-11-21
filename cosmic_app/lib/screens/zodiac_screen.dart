import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ZodiacScreen extends StatefulWidget {
  const ZodiacScreen({super.key});

  @override
  State<ZodiacScreen> createState() => ZodiacScreenState();
}

class ZodiacScreenState extends State<ZodiacScreen> {
 List<Post> posts = [];
  bool isLoading = false;
  PostController controller = PostController(PostFirebaseService());

  @override
void initState() {
  super.initState();

  controller.onSync.listen((bool syncState) {
    setState(() {
      isLoading = syncState;
    });
  });
  
  getPosts();
}



  void getPosts() async {
    var newPosts = await controller.fetchPosts();
    setState(() {
      posts = newPosts;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Post> zodiacSigns = posts;


    return Scaffold(
      appBar: AppBar(
        title: const Text('All Zodiac Signs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: zodiacSigns.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 3 / 4,
          ),
          itemBuilder: (context, index) {
            final Post sign = zodiacSigns[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/zodiac_show',
                    arguments: sign);
              },
              child: Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(12.0),
                        ),
                        child: Image.asset(
                          sign.zodiacimage,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
                        ),


                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        sign.zodiacsign,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Piazzolla',
                        ),
                        textAlign: TextAlign.center,
                        ),

                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        sign.description,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Piazzolla',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        ),

                    ),
                    const SizedBox(height: 8.0),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Post {
  int zodiacid;
  String zodiacsign;
  String description;
  String zodiacimage;
  String dbId;

  Post(this.zodiacid, this.zodiacsign, this.description, this.zodiacimage, {this.dbId = ""});

  factory Post.fromSnapshot(Map<String, dynamic> json) {
    return Post(
      json['zodiacid'] ?? 0,
      json['zodiacsign'] ?? '',
      json['description'] ?? '',
      json['zodiacimage'] ?? '',
    );
  }

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      json['zodiacid'] ?? 0,
      json['zodiacsign'] ?? '',
      json['description'] ?? '',
      json['zodiacimage'] ?? '',
    );
  }
}


class AllPosts {
  final List<Post> posts;
  AllPosts(this.posts);


  factory AllPosts.fromSnapshot(QuerySnapshot qs) {
    List<Post> posts = qs.docs.map((DocumentSnapshot ds) {
      Post post = Post.fromSnapshot(ds.data() as Map<String, dynamic>);
      post.dbId = ds.id;
      return post;
    }).toList();

    return AllPosts(posts);
  }


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
  @override
  Future<List<Post>> getPosts() async {
    QuerySnapshot qs = 
      await FirebaseFirestore.instance.collection('zodiacsign').get();
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
