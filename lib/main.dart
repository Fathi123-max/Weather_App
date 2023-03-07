import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wether_application/home/home_screen.dart';
import 'package:wether_application/utils/biniding/homebindind.dart';

void main() {
  runApp( WeatherApp());
  
}
// whenever your initialization is completed, remove the splash screen:
class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeScreen(),
          binding: HomeBinding(),
        )
      ],
    );
  }
}
