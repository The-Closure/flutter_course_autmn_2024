// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'lamp_bloc.dart';

@immutable
sealed class LampState {}

final class LampInitial extends LampState {}

class LampOn extends LampState {
  Color color;
  LampOn({
    required this.color,
  });
}

class LampOff extends LampState {
  Color color;
  LampOff({
    required this.color,
  });
}

class BrokenLamp extends LampState {
  Color color;
  BrokenLamp({
    required this.color,
  });
}
