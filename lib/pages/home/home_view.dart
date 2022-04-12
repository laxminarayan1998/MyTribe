import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              children: [
                Text('Hello'),
                PhoneFieldHint(
                  autoFocus: true,
                ),
              ],
            ),
          ),
        ),
      );
}
