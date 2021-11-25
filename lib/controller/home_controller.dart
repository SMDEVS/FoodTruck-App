import 'package:food_truck_app/api/api_manager.dart';
import 'package:food_truck_app/model/home_model.dart';
import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class HomeController extends GetxController with StateMixin<HomeModel> {
  final _apiProvider = Get.find<ApiManager>();

  Future<void> getFood(String barcode) async {
    final Response<dynamic> response = await _apiProvider.getProducts(barcode);
    if (response.hasError) {
      change(null, status: RxStatus.error(response.statusText));
    } else {
      change(HomeModel.fromJson(response.body), status: RxStatus.success());
    }
  }
}
