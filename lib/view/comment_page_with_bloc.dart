import 'package:bloc_in_deep/view/bloc/comment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentPageWithBloc extends StatelessWidget {
  const CommentPageWithBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CommentBloc()..add(GetComment()),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Center(
            child: BlocBuilder<CommentBloc, CommentState>(
              builder: (context, state) {
                if (state is SuccessCommentArrived) {
                  return Text(state.comment.email);
                }
                if (state is FailedToGetComment) {
                  return const Text("Sorry , There is an Error");
                }
                return const LinearProgressIndicator();
              },
            ),
          ),
        );
      }),
    );
  }
}
