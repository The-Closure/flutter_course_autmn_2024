import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_and_graphql/controller/auth_controller.dart';
import 'package:getx_and_graphql/model/login_model.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final auth = Get.put(AuthController());
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AuthController>(
        builder: (controller) {
          return Center(
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
                          border: OutlineInputBorder(),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 300,
                    child: TextField(
                      controller: password,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await controller.login(
                      LoginModel(),
                    );
                  },
                  child: const Text(
                    'Log In',
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
