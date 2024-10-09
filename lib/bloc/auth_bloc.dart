import 'package:bloc/bloc.dart';
import 'package:bloc_in_deep/model/user_model.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    List<UserModel> users = [
      UserModel(name: "Ahmad", password: "123123"),
      UserModel(name: "Rami", password: "123456"),
      UserModel(name: "Sami", password: "654321")
    ];

    on<LogInEvent>((event, emit) async {
      emit(Loading());
      await Future.delayed(Duration(seconds: 2));
      try {
        var temp = users.firstWhere((e) => e.name == event.user.name);
        if (temp.password != event.user.password) {
          emit(FailedState());
        }

        if (temp.password == event.user.password) {
          emit(SuccessToLogIn());
        }
      } catch (e) {
        emit(NeverHasAccount());
      }
    });
  }
}
