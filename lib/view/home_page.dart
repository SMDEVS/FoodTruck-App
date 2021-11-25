import 'package:flutter/material.dart';
import 'package:food_truck_app/controller/home_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        (state) => Text(state!.productlist![0].productname!),
        onLoading: const Center(
          child: CircularProgressIndicator(),
        ),
        onError: (error) => const Center(
          child: Text('error'),
        ),
      ),
    );
  }
}
