import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_tribe/theme/theme.dart';
import 'package:my_tribe/utils/utils.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: Get.width,
                height: Get.height,
                decoration: Styles.backgroundColor,
              ),
              Column(
                children: [
                  Container(
                    padding: Dimens.edgeInsetsAll(Dimens.twenty),
                    key: const Key('splash-image'),
                    child: Image.asset(
                      AssetConstants.logo,
                      color: Colors.black,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Dimens.boxHeight50,
                  Dimens.boxHeight30,
                  Container(
                    height: Dimens.fifty,
                    width: Get.width * 0.7,
                    decoration: Styles.cardDecoration,
                    child: Center(
                      child: Text(
                        'emailMobile'.tr,
                        style: Styles.mediumBlack18,
                      ),
                    ),
                  ),
                  Dimens.boxHeight20,
                  Container(
                    height: Dimens.fifty,
                    width: Get.width * 0.7,
                    decoration: Styles.cardDecoration,
                    child: Center(
                      child: Text(
                        'signIn'.tr,
                        style: Styles.mediumBlack18,
                      ),
                    ),
                  ),
                  Dimens.boxHeight50,
                  Text(
                    'or'.tr,
                    style: Styles.boldBlack20,
                  ),
                  Dimens.boxHeight30,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: Dimens.fourty,
                        width: Dimens.fourty,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimens.thirty),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(Dimens.thirty),
                          child: Image.asset(
                            AssetConstants.google,
                          ),
                        ),
                      ),
                      Dimens.boxWidth10,
                      Container(
                        height: Dimens.fourty,
                        width: Dimens.fourty,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimens.thirty),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(Dimens.thirty),
                          child: Image.asset(
                            AssetConstants.apple1,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: Dimens.edgeInsets16,
                    child: Text(
                      'myTribe'.tr,
                      style: Styles.mediumBlack20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
