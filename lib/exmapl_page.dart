import 'package:bloc_pattern/bloc/lamp_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExmaplePage extends StatelessWidget {
  const ExmaplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LampBloc(),
      child: Builder(
        builder: (context) {
          return BlocBuilder<LampBloc, LampState>(
            builder: (context, state) {
              if (state is LampOn) {
                return Scaffold(
                  body: Center(
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  floatingActionButton: FloatingActionButton(onPressed: () {
                    context.read<LampBloc>().add(TurnOffLamp());
                  }),
                );
              } else if (state is BrokenLamp) {
                return Scaffold(
                  body: Center(
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  floatingActionButton: FloatingActionButton(
                    onPressed: () {
                      context.read<LampBloc>().add(TurnOnLamp());
                    },
                  ),
                );
              } else {
                return Scaffold(
                  body: Center(
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  floatingActionButton: FloatingActionButton(onPressed: () {
                    context.read<LampBloc>().add(TurnOnLamp());
                  }),
                );
              }
            },
          );
        },
      ),
    );
  }
}

class RefactorTheExamplePage extends StatelessWidget {
  const RefactorTheExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LampBloc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Center(
              child: BlocBuilder<LampBloc, LampState>(
                builder: (context, state) {
                  return Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: state is BrokenLamp
                          ? state.color
                          : state is LampOn
                              ? state.color
                              : state is LampOff
                                  ? state.color
                                  : Colors.white,
                    ),
                  );
                },
              ),
            ),
            floatingActionButton: FloatingActionButton(onPressed: () {
              context.read<LampBloc>().add(TurnOnLamp());
            }),
          );
        }
      ),
    );
  }
}
