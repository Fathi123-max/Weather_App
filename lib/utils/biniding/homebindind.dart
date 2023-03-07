import 'package:get/get.dart';
import 'package:wether_application/controller/weatherservices.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    
    Get.lazyPut(() => HomeController( city: 'cairo'));
    
  }
}