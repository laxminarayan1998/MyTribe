import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_tribe/pages/pages.dart';
import 'package:my_tribe/theme/theme.dart';
import 'package:my_tribe/utils/utils.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: GetBuilder<SplashController>(
            builder: (_controller) => SizedBox(
              width: Get.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: Dimens.hundred * 2,
                    width: Dimens.hundred * 2,
                    // padding: Dimens.edgeInsetsAll(Dimens.twenty),
                    color: Colors.white,
                    key: const Key('splash-image'),
                    child: Image.asset(
                      AssetConstants.imageLogo,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Dimens.boxHeight10,
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
            ),
          ),
        ),
      );
}
