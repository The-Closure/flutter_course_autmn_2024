// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'comment_bloc.dart';

@immutable
sealed class CommentState {}

final class CommentInitial extends CommentState {}

class Loading extends CommentState {}

class SuccessCommentArrived extends CommentState {
  final CommentModel comment;
  SuccessCommentArrived({
    required this.comment,
  });
}


class FailedToGetComment extends CommentState {}