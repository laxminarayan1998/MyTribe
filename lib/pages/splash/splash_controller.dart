import 'package:get/get.dart';
import 'package:my_tribe/navigators/navigators.dart';

class SplashController extends GetxController {
  bool isUserLoggedIn = false;

  @override
  void onInit() {
    super.onInit();
    onInitializeData();
  }

  void onInitializeData() {
    if (isUserLoggedIn) {
      Future.delayed(
        const Duration(milliseconds: 500),
        () => RouteManagement.offToSignIn(),
      );
    } else {
      Future.delayed(
        const Duration(milliseconds: 500),
        () => RouteManagement.offToSignIn(),
      );
    }
  }
}
