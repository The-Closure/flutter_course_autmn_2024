import 'package:get/get.dart';
import 'package:getx_and_graphql/model/user_mode.dart';

class UserContoller extends GetxController {
  User? user;

  getData() async {
    var response =
        await GetConnect().get('https://jsonplaceholder.typicode.com/users/1');

    if (response.isOk) {
      user = User.fromMap(response.body);
      update();
    } else {
      Get.showSnackbar(
        const GetSnackBar(
          message: "Somthing Wrong WIth Your Connection",
        ),
      );

    }
  }
}
