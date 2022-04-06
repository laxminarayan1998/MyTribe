import 'package:get/get.dart';
import 'package:my_tribe/pages/home/home.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
