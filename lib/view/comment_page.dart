import 'package:bloc_in_deep/model/clean_model.dart';
import 'package:bloc_in_deep/model/comment_model.dart';
import 'package:bloc_in_deep/service/comment_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CommentPage extends StatefulWidget {
  CommentPage({super.key});

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  DataModel data = DataModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: data is CommentModel
          ? Center(child: Text((data as CommentModel).name))
          : data is Failed
              ? const Center(child:  Text("The Reuest Not Success"))
              : data is EmptyData
                  ? const Center(child:  Text("There is No Data"))
                  : const CircularProgressIndicator(),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        data = await CommentService(dio: Dio()).getComments();
        setState(() {});
      }),
    );
  }
}
