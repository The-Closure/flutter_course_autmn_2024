import 'package:dio/dio.dart';
import 'package:rest_api_2/model/post_model.dart';

Future<Map<String, dynamic>> getOnePost() async {
  Dio dio = Dio();
  final response =
      await dio.get('https://jsonplaceholder.typicode.com/posts/1');
  // print(response.data);
  return response.data;
}
Future<List<PostModel>> getAllPosts() async {
  Dio dio = Dio();
  final response =
      await dio.get('https://jsonplaceholder.typicode.com/posts');
  // print(response.data);
   List<PostModel> posts = [];
        for (var i = 0; i < response.data.length; i++) {
                  PostModel newPost = PostModel.fromMapToObject(response.data[i]);
                  posts.add(newPost);
                }

  return posts;
}
