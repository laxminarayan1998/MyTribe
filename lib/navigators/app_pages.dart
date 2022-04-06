import 'package:get/get.dart';
import 'package:my_tribe/pages/home/home.dart';
import 'package:my_tribe/pages/pages.dart';

part 'app_routes.dart';

class AppPages {
  static var transistionDuration = const Duration(milliseconds: 350);

  static const initial = Routes.splash;

  static final pages = [
    GetPage(
      name: _Paths.splash,
      transitionDuration: transistionDuration,
      page: () => const SplashView(),
      binding: SplashBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.login,
      transitionDuration: transistionDuration,
      page: () => const LoginView(),
      binding: LoginBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.otpLogin,
      transitionDuration: transistionDuration,
      page: () => const OtpLoginView(),
      binding: LoginBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.home,
      transitionDuration: transistionDuration,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeft,
    ),
  ];
}
