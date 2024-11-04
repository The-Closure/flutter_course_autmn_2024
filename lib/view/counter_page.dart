import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_and_graphql/controller/counter_controller.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});

  final counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GetBuilder Pattern With Getx",
        ),
      ),
      body: Center(
        child: GetBuilder<CounterController>(
          builder: (controller) {
            return Text(
              counterController.counter.toString(),
              style: TextStyle(fontSize: 32),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.decreament();
        },
      ),
    );
  }
}

class CounterPageWithObs extends StatelessWidget {
  CounterPageWithObs({super.key});

  final counterController = Get.put(CounterControllerWithObs());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Obeserver Pattern WIth Getx".tr),
      ),
      body: Center(
        child: Obx(
          () {
            return Text(
              counterController.counter.toString(),
              style: TextStyle(
                fontSize: 32,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        counterController.counter.value++;
      }),
    );
  }
}
