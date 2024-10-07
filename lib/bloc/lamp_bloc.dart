import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'lamp_event.dart';
part 'lamp_state.dart';

class LampBloc extends Bloc<LampEvent, LampState> {
  int frequencyOfUseLamp = 0;
  LampBloc() : super(LampInitial()) {
    on<TurnOnLamp>((event, emit) {
      if (frequencyOfUseLamp > 5) {
        emit(BrokenLamp(color: Colors.black));
      } else {
        print(state);
        frequencyOfUseLamp++;
        emit(LampOn(color: Colors.yellow));
      }
    });

    on<TurnOffLamp>(
      (event, emit) {
        if (frequencyOfUseLamp > 5) {
          emit(BrokenLamp(color: Colors.black));
        } else {
          print(state);
          frequencyOfUseLamp++;
          emit(LampOff(color: Colors.grey));
        }
      },
    );
  }
}
