import 'package:get/get.dart';
import 'package:my_tribe/pages/pages.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
