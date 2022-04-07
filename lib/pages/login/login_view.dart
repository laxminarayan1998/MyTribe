import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:get/get.dart';
import 'package:my_tribe/navigators/routes_management.dart';
import 'package:my_tribe/theme/theme.dart';
import 'package:my_tribe/utils/utils.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            Dimens.boxHeight100,
            Column(
              children: [
                Container(
                  height: Dimens.hundred * 1.5,
                  width: Dimens.hundred * 1.5,
                  // padding: Dimens.edgeInsetsAll(Dimens.twenty),
                  key: const Key('splash-image'),
                  child: Image.asset(
                    AssetConstants.imageLogo,
                    // color: ColorsValue.endColor,
                    fit: BoxFit.contain,
                  ),
                ),
                Dimens.boxHeight10,
                // GradientText(
                //   'welcomeTo'.tr.toUpperCase(),
                //   style: Styles.boldPrimary20,
                //   colors: const [
                //     ColorsValue.endColor2,
                //     ColorsValue.startColor2,
                //   ],
                // ),
                GradientText(
                  'myTribe'.tr.toUpperCase(),
                  style: Styles.boldPrimary24,
                  colors: const [
                    ColorsValue.endColor2,
                    ColorsValue.startColor2,
                  ],
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Container(
                  height: Dimens.fifty,
                  width: Get.width * 0.5,
                  decoration: Styles.buttonDecoration,
                  child: Center(
                    child: Text(
                      'emailMobile'.tr,
                      style: Styles.mediumWhite18,
                    ),
                  ),
                ),
                Dimens.boxHeight20,
                Container(
                  height: Dimens.fifty,
                  width: Get.width * 0.5,
                  decoration: Styles.buttonDecoration,
                  child: Center(
                    child: Text(
                      'signIn'.tr,
                      style: Styles.mediumWhite18,
                    ),
                  ),
                ),
                Dimens.boxHeight50,
                GradientText(
                  'or'.tr,
                  style: Styles.boldPrimary20,
                  colors: const [
                    ColorsValue.endColor2,
                    ColorsValue.startColor2,
                  ],
                ),
                Dimens.boxHeight30,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Container(
                        // color: Colors.white,
                        decoration: BoxDecoration(
                          gradient: ColorsValue.bluePinkGradient2,
                        ),
                        child: Icon(
                          FontAwesome.google,
                          size: Dimens.thirty,
                          color: Colors.white,
                          // color: ColorsValue.endColor2,
                        ),
                      ),
                    ),
                    Dimens.boxWidth10,
                    IconButton(
                      onPressed: () {
                        RouteManagement.goToOtpLogin();
                      },
                      icon: Container(
                        decoration: BoxDecoration(
                          gradient: ColorsValue.bluePinkGradient2,
                        ),
                        child: Icon(
                          FontAwesome.apple,
                          size: Dimens.thirty,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Dimens.boxHeight50,
              ],
            ),
          ],
        ),
      );
}
