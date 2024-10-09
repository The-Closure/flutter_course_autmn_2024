import 'package:bloc_in_deep/bloc/auth_bloc.dart';
import 'package:bloc_in_deep/bloc_observer/bo_manger.dart';
import 'package:bloc_in_deep/model/user_model.dart';
import 'package:bloc_in_deep/view/comment_page_with_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CommentPageWithBloc(),
    );
  }
}

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final TextEditingController username = TextEditingController();

  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is FailedState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(
                      "Please Enter Your Corrcet Password",
                    ),
                  ),
                );
              }

              if (state is NeverHasAccount) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(),
                      body: const Center(
                        child: Text(
                          "exmaple to sign you up",
                        ),
                      ),
                    ),
                  ),
                );
              }

              if (state is SuccessToLogIn) {
                Future.delayed(Duration(seconds: 2), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scaffold(
                        appBar: AppBar(),
                        body: const Center(
                          child: Text(
                            "Example For HomePage",
                          ),
                        ),
                      ),
                    ),
                  );
                });
              }
            },
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      child: TextField(
                        controller: username,
                        decoration: const InputDecoration(
                          hintText: 'UserName',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      child: TextField(
                        controller: password,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      if (state is AuthInitial || state is NeverHasAccount) {
                        return ElevatedButton(
                          onPressed: () {
                            context.read<AuthBloc>().add(
                                  LogInEvent(
                                    user: UserModel(
                                      name: username.text,
                                      password: password.text,
                                    ),
                                  ),
                                );
                          },
                          child: const Text("Log In"),
                        );
                      } else if (state is SuccessToLogIn) {
                        return Container(
                          width: 180,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green),
                          child: const Center(
                            child: Icon(Icons.verified),
                          ),
                        );
                      } else {
                        return const CircularProgressIndicator();
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
