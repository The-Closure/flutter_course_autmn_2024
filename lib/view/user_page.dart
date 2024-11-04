import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_and_graphql/controller/user_contoller.dart';
import 'package:getx_and_graphql/model/user_mode.dart';

class UserPage extends StatelessWidget {
  UserPage({super.key});

  final userController = Get.put(UserContoller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.changeThemeMode(
                Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
              );
            },
            icon: Icon(
              Icons.dark_mode_outlined,
            ),
          )
        ],
      ),
      body: Center(
        child: GetBuilder<UserContoller>(
          builder: (controller) {
            if (controller.user is User) {
              return Text(controller.user!.name);
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await userController.getData();
        },
      ),
    );
  }
}
