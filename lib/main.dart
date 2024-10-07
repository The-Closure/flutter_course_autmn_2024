import 'package:bloc_pattern/counter_bloc/counter_class.dart';
import 'package:bloc_pattern/counter_bloc/counter_event.dart';
import 'package:bloc_pattern/counter_bloc/counter_state.dart';
import 'package:bloc_pattern/exmapl_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RefactorTheExamplePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterClass(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    context.read<CounterClass>().add(ResesToZero());
                  },
                  icon: Icon(Icons.exposure_zero))
            ],
          ),
          body: Center(
            child: InkWell(
              onTap: () {
                context.read<CounterClass>().add(DecreaseCounter());
              },
              child: BlocBuilder<CounterClass, CounterState>(
                builder: (context, state) {
                  if (state is TheCounterHasBeenSubbed) {
                    return Text(state.counter.toString());
                  } else if (state is TheCounterHasBeenAdded) {
                    return Text(state.counter.toString());
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<CounterClass>().add(IncreaseCounter());
            },
          ),
        );
      }),
    );
  }
}
