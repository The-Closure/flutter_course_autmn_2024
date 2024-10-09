part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}


class SuccessToLogIn extends AuthState {}

class FailedState extends AuthState {}

class NeverHasAccount extends AuthState {}

class Loading extends AuthState {}