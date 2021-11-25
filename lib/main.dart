import 'package:flutter/material.dart';
import 'package:food_truck_app/binding/home_binding.dart';
import 'package:food_truck_app/view/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        title: 'FoodTruck',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialBinding: HomeBindings(),
        home: const HomePage(),
      );
}
