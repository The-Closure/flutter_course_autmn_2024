import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_and_graphql/model/login_model.dart';

class AuthController extends GetxController {
  var box = GetStorage();

  login(LoginModel user) async {
    var response = await GetConnect()
        .post('https://dummyjson.com/auth/login', user.toMap());
    if (response.isOk) {
      box.write("token", response.body["accessToken"]);
      Get.to(
        () => Scaffold(
          body: Center(
            child: Text("Hello Ms.Emilty"),
          ),
        ),
      );
    } else {
      Get.showSnackbar(GetSnackBar(
        message: "There is a problem",
      ));
    }
  }
}
