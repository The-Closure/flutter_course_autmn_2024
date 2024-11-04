import 'package:get/get.dart';
import 'package:getx_and_graphql/view/counter_page.dart';

class CounterController extends GetxController {
  int counter = 0;

  increament() {
    counter++;
    update();
  }

  decreament() {

    // ! Change if statement to Navigate CounterPage with Obs
    counter--;
    if (counter < 0) {
      Get.showSnackbar(
        GetSnackBar(
          message: "Hello World",
        ),
      );
    } else {
      Get.to(()=>CounterPageWithObs());
    }
    update();
  }
}

class CounterControllerWithObs extends GetxController {
  RxInt counter = 0.obs;
}
