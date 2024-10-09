import 'package:bloc_in_deep/model/clean_model.dart';
import 'package:bloc_in_deep/model/comment_model.dart';
import 'package:dio/dio.dart';

class CommentService {
  final Dio dio;

  CommentService({required this.dio});

  Future<DataModel> getComments() async {
    try {
      Response response =
          await dio.get("https://jsonplaceholder.typicode.com/comments/1");
      if (response.data.isEmpty) {
        return EmptyData();
      } else {
        CommentModel comment = CommentModel.fromMap(response.data);

        return comment;
      }
    } catch (e) {
      return Failed();
    }
  }
}
