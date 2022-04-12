import 'package:flutter/material.dart';
import 'package:hardware_city/navigators/navigators.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Container(
            child: Center(
              child: GestureDetector(
                onTap: () {
                  RouteManagement.goToHome();
                },
                child: const Text('splash'),
              ),
            ),
          ),
        ),
      );
}
