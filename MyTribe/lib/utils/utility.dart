import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hardware_city/widgets/widgets.dart';
import 'package:logger/logger.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class Utility {
  static void printDLog(String message) {
    Logger().d('${'appname'.tr}: $message');
  }

  /// Print info log.
  ///
  /// [message] : The message which needed to be print.
  static void printILog(dynamic message) {
    Logger().i('${'appname'.tr}: $message');
  }

  /// Print info log.
  ///
  /// [message] : The message which needed to be print.
  static void printLog(dynamic message) {
    Logger().log(Level.info, message);
  }

  /// Print error log.
  ///
  /// [message] : The message which needed to be print.
  static void printELog(String message) {
    Logger().e('${'appname'.tr}: $message');
  }

  /// Close any open dialog.
  static void closeDialog() {
    if (Get.isDialogOpen ?? false) Get.back<void>();
  }

  /// Show no internet dialog if there is no
  /// internet available.
  static Future<void> showNoInternetDialog() async {
    await Get.dialog<void>(
      const NoInternetWidget(),
      barrierDismissible: false,
    );
  }

  /// Show loader
  static void showLoader() async {
    await Get.dialog<void>(
      const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(.3),
    );
  }

  /// Returns true if the internet connection is available.
  static Future<bool> isNetworkAvailable() async =>
      await InternetConnectionChecker().hasConnection;
}
