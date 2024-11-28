import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HoroscopeStatusCard extends StatefulWidget {
  const HoroscopeStatusCard({super.key});

  @override
  State<HoroscopeStatusCard> createState() => _HoroscopeStatusCardState();
}

class _HoroscopeStatusCardState extends State<HoroscopeStatusCard> {
  List<Post> posts = [];
  bool isLoading = false;
  late PostController controller;

  @override
  void initState() {
    super.initState();

    controller = PostController(PostFirebaseService());

    controller.onSync.listen((bool syncState) {
      setState(() {
        isLoading = syncState;
      });
    });

    _getPosts();
  }

  void _getPosts() async {
    var newPosts = await controller.fetchPosts();
    print('Fetched posts: ${newPosts.length}');
    setState(() {
      posts = newPosts;
    });
  }

  Future<void> _updateHoroscopeStatus(Post post) async {
    post.Status = true; // Update the status to true
    await controller.updatePost(post);
    _getPosts(); // Refresh the list after updating
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : posts.isEmpty
              ? const Center(
                  child: Text(
                    'No posts available.',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              : ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    Post post = posts[index];
                    return GestureDetector(
                      onTap: () => _updateHoroscopeStatus(post),
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              const SizedBox(width: 16.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 8.0),
                                  Text(
                                    post.Status
                                        ? 'You have read your horoscope today!'
                                        : 'You have not read your horoscope today.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color:
                                          post.Status ? Colors.green : Colors.red,
                                      fontFamily: 'Piazzolla',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
    );
  }
}

class Post {
  bool Status;
  String dbId;

  Post(this.Status, {this.dbId = ""});

  factory Post.fromSnapshot(Map<String, dynamic> json, String id) {
    return Post(
      json['Status'] as bool? ?? false,
      dbId: id,
    );
  }

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(json['Status'] as bool? ?? false);
  }
}

class AllPosts {
  final List<Post> posts;
  AllPosts(this.posts);

  factory AllPosts.fromSnapshot(QuerySnapshot qs) {
    List<Post> posts = qs.docs.map((DocumentSnapshot ds) {
      return Post.fromSnapshot(ds.data() as Map<String, dynamic>, ds.id);
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
  Future<void> updatePost(Post post);
}

class PostFirebaseService implements PostService {
  @override
  Future<List<Post>> getPosts() async {
    try {
      // ดึงข้อมูลทั้งหมดจาก collection
      QuerySnapshot qs =
          await FirebaseFirestore.instance.collection('DailyHoroStatus').get();
      if (qs.docs.isEmpty) {
        print('No documents found in DailyHoroStatus collection.');
        return [];
      }

      // Mapping เป็น List<Post>
      return qs.docs.map((doc) {
        return Post.fromSnapshot(doc.data() as Map<String, dynamic>, doc.id);
      }).toList();
    } catch (e) {
      print('Error fetching posts: $e');
      return [];
    }
  }

  @override
  Future<void> updatePost(Post post) async {
    try {
      final docRef = FirebaseFirestore.instance
          .collection("DailyHoroStatus")
          .doc(post.dbId);
      await docRef.update({"Status": post.Status});
    } catch (e) {
      print("Error updating post: $e");
    }
  }
}

class PostController {
  List<Post> posts = [];
  final PostService service;
  final StreamController<bool> onSyncController = StreamController();

  Stream<bool> get onSync => onSyncController.stream;

  PostController(this.service);

  Future<List<Post>> fetchPosts() async {
    onSyncController.add(true);
    posts = await service.getPosts();
    onSyncController.add(false);
    return posts;
  }

  Future<void> updatePost(Post post) async {
    onSyncController.add(true);
    await service.updatePost(post);
    onSyncController.add(false);
  }
}
