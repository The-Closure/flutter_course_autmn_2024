// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class CounterState {}

class Init extends CounterState {}

class TheCounterHasBeenAdded extends CounterState {
  int counter;
  TheCounterHasBeenAdded({
    required this.counter,
  });
}

class TheCounterHasBeenSubbed extends CounterState {
  int counter;
  TheCounterHasBeenSubbed({
    required this.counter,
  });
}

class ZeroState extends CounterState {}