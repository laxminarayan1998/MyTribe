import 'package:get/get.dart';
import 'package:hardware_city/pages/home/home.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
