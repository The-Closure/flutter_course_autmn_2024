part of 'lamp_bloc.dart';

@immutable
sealed class LampEvent {}

class TurnOnLamp extends LampEvent {}

class TurnOffLamp extends LampEvent {}
