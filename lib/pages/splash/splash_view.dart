import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_tribe/pages/pages.dart';
import 'package:my_tribe/theme/theme.dart';
import 'package:my_tribe/utils/utils.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: GetBuilder<SplashController>(
            builder: (_controller) {
              return Center(
                child: Container(
                  padding: Dimens.edgeInsetsAll(Dimens.twenty),
                  color: Colors.white,
                  key: const Key('splash-image'),
                  child: Image.asset(
                    AssetConstants.logo,
                    fit: BoxFit.contain,
                  ),
                ),
              );
            },
          ),
        ),
      );
}
