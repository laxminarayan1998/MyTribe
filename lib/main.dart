import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hardware_city/utils/utils.dart';

import 'api_calls/services/services.dart';
import 'navigators/navigators.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await initializeServices();
    runApp(const MyApp());
  } catch (error) {
    Utility.printELog(error.toString());
  }
}

Future<void> initializeServices() async {
  await Get.putAsync(() => CommonService().init());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
    );

    return ScreenUtilInit(
      designSize: const Size(375, 745),
      builder: () => GetMaterialApp(
        locale: const Locale('en'),
        title: 'appName'.tr,
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        getPages: AppPages.pages,
        translations: TranslationFile(),
        initialRoute: AppPages.initial,
        enableLog: true,
      ),
    );
  }
}
