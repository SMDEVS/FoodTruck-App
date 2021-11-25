import 'package:food_truck_app/model/home_model.dart';
import 'package:get/get_connect.dart';

class ApiManager extends GetConnect {
  //getFoodProducts based on barcode
  Future<Response<HomeModel>> getProducts(String barcode) async =>
      get('url?bardcode=$barcode');
}
