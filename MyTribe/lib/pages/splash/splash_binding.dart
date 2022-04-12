import 'package:get/get.dart';
import 'package:hardware_city/pages/pages.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
