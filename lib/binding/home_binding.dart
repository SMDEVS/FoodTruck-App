import 'package:food_truck_app/api/api_manager.dart';
import 'package:food_truck_app/controller/home_controller.dart';
import 'package:get/instance_manager.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiManager());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
