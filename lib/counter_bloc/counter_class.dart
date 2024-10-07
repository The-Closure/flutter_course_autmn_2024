import 'package:bloc_pattern/counter_bloc/counter_event.dart';
import 'package:bloc_pattern/counter_bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterClass extends Bloc<CounterEvent, CounterState> {
  int coutner = 0;
  CounterClass() : super(Init()) {
    on<IncreaseCounter>(
      (event, emit) {
        coutner++;
        print("object");
        emit(TheCounterHasBeenAdded(counter: coutner));
      },
    );

    on<DecreaseCounter>(
      (event, emit) {
        if (coutner > 0) {
          coutner--;
          print("Hello World");
          emit(TheCounterHasBeenSubbed(counter: coutner));
        } else {
          emit(ZeroState());
        }
      },
    );

    on<ResesToZero>(
      (event, emit) {
        coutner = 0;
        emit(ZeroState());
      },
    );
  }
}
