import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_session/pages/home_page.dart';
import 'package:firebase_session/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Email'),
              const Gap(10),
              TextField(
                controller: email,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const Gap(30),
              const Text('Password'),
              const Gap(10),
              TextField(
                controller: password,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const Gap(50),
              ElevatedButton(
                onPressed: () async {
                  try {
                    final credential =
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: email.text,
                      password: password.text,
                    );
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  }
                  //  on FirebaseAuthException catch (e) {
                  //   // print('======================');
                  //   if (e.code == 'user-not-found') {
                  //     print('No user found for that email.');
                  //   } else if (e.code == 'wrong-password') {
                  //     print('Wrong password provided for that user.');
                  //   }
                  // }
                  catch (e) {
                    print('======================');
                    print(e);
                  }
                },
                child: const Text(
                  'Login',
                ),
              ),
              const Gap(20),
              Row(
                children: [
                  const Text('If you don\'t have account'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupPage(),
                          ));
                    },
                    child: const Text('SignUp'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
