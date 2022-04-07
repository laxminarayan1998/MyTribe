import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_tribe/theme/theme.dart';
import 'package:my_tribe/utils/utils.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class OtpLoginView extends StatelessWidget {
  const OtpLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: SafeArea(
        child: Padding(
          padding: Dimens.edgeInsets16,
          child: Column(
            children: [
              Dimens.boxHeight50,
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
              Dimens.boxHeight50,
              GradientText(
                'sitBackWhileWeCollectKey'.tr,
                style: Styles.boldPrimary20,
                colors: const [
                  ColorsValue.endColor2,
                  ColorsValue.startColor2,
                ],
              ),
              Text(
                'sitBackWhileWeCollectKey'.tr,
                style: Styles.boldPrimary24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: Dimens.sixty,
                    width: Dimens.fifty,
                    decoration: Styles.buttonDecoration5,
                    child: Center(
                      child: Text(
                        '1',
                        style: Styles.mediumWhite20,
                      ),
                    ),
                  ),
                  Container(
                    height: Dimens.sixty,
                    width: Dimens.fifty,
                    decoration: Styles.buttonDecoration5,
                    child: Center(
                      child: Text(
                        '1',
                        style: Styles.mediumWhite20,
                      ),
                    ),
                  ),
                  Container(
                    height: Dimens.sixty,
                    width: Dimens.fifty,
                    decoration: Styles.buttonDecoration5,
                    child: Center(
                      child: Text(
                        '1',
                        style: Styles.mediumWhite20,
                      ),
                    ),
                  ),
                  Container(
                    height: Dimens.sixty,
                    width: Dimens.fifty,
                    decoration: Styles.buttonDecoration5,
                    child: Center(
                      child: Text(
                        '1',
                        style: Styles.mediumWhite20,
                      ),
                    ),
                  ),
                ],
              ),
              Dimens.boxHeight50,
              Container(
                height: Dimens.fifty,
                width: Get.width * 0.5,
                decoration: Styles.buttonDecoration,
                child: Center(
                  child: Text(
                    'verify'.tr,
                    style: Styles.mediumWhite18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ));
}
