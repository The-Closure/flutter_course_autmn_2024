import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_session/pages/home_page.dart';
import 'package:firebase_session/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                    final credential = await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: email.text,
                      password: password.text,
                    );
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      print('The password provided is too weak.');
                    } else if (e.code == 'email-already-in-use') {
                      print('The account already exists for that email.');
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                child: const Text(
                  'Signup',
                ),
              ),
              const Gap(20),
              Row(
                children: [
                  const Text('If you have account'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ));
                    },
                    child: const Text('Login'),
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
