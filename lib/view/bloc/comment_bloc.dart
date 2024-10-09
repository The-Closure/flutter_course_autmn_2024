import 'package:bloc/bloc.dart';
import 'package:bloc_in_deep/model/clean_model.dart';
import 'package:bloc_in_deep/model/comment_model.dart';
import 'package:bloc_in_deep/service/comment_service.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'comment_event.dart';
part 'comment_state.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  CommentBloc() : super(CommentInitial()) {
    on<GetComment>((event, emit) async {
      emit(Loading());
      DataModel data = await CommentService(dio: Dio()).getComments();
      if (data is CommentModel) {
        emit(SuccessCommentArrived(comment: data));
      } else {
        emit(FailedToGetComment());
      }
    });
  }
}
