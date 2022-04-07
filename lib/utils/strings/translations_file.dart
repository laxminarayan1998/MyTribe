import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';

class TranslationFile extends Translations {
  /// List of locales used in the application
  static const listOfLocales = <Locale>[
    Locale('en'),
  ];

  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'appname': 'Hardware City',
          'noInternet': 'You are not connected to the internet. Please check.',
          'dataNotFound': 'Data Not Found',
          'okay': 'Okay',
          'emailMobile': 'Email/Mobile',
          'signIn': 'Sign In',
          'myTribe': 'My Tribe',
          'or': 'OR',
          'welcomeTo': 'Welcome To',
          'sitBackWhileWeCollectKey': 'Sit back while we collect key',
          'verify': 'Verify',
        },
      };
}
