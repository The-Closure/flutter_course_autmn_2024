import 'package:auth_and_jwt/model/user_model.dart';
import 'package:auth_and_jwt/service/auth_service.dart';
import 'package:auth_and_jwt/view/myinfo_page.dart';

import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  LogInPage({super.key});

  final TextEditingController username = TextEditingController();

  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: username,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: password,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () async {
              bool status = await login(
                  UserModel(username: username.text, password: password.text));
              if (status) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Success"),
                  backgroundColor: Colors.green,
                ));
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyinfoPage(),
                    ));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Failed"),
                  backgroundColor: Colors.red,
                ));
              }
            },
            child: Text(
              "Log In",
            ),
          ),
        )
      ],
    ));
  }
}
