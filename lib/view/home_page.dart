import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rest_api_2/model/post_model.dart';

import '../service/post_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Map<String, dynamic> data = {};
  PostModel? post;
  List<PostModel> posts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // ListTile(
            //   title: Text(data['title'] ?? ''),
            //   subtitle: Text(data['body'] ?? ''),
            //   leading: CircleAvatar(
            //     child: Text(
            //       data['id'].toString(),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 600,
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(posts[index].title),
                    subtitle: Text(posts[index].body),
                    leading: CircleAvatar(
                      child: Text(
                        posts[index].id.toString(),
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                // Map<String, dynamic> result = await getOnePost();
                // print(result);
                // post = PostModel.fromMapToObject(result);

                posts = await getAllPosts();

          
                setState(() {});
              },
              child: const Text('get one post'),
            ),
          ],
        ),
      ),
    );
  }
}
