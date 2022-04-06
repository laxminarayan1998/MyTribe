part of 'app_pages.dart';

abstract class Routes {
  static const splash = _Paths.splash;
  static const home = _Paths.home;
  static const login = _Paths.login;
  static const otpLogin = _Paths.otpLogin;
}

abstract class _Paths {
  static const splash = '/splash-screen';
  static const home = '/home-view';
  static const login = '/login-view';
  static const otpLogin = '/otpLogin-view';
}
