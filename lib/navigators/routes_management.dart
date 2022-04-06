import 'package:get/get.dart';
import 'package:my_tribe/navigators/navigators.dart';

class RouteManagement {
  /// Go to the splash screen.
  static void goToSplash() {
    Get.offNamed<void>(Routes.splash);
  }

  /// Go to the splash screen.
  static void goToHome() {
    Get.offNamed<void>(Routes.home);
  }
}
