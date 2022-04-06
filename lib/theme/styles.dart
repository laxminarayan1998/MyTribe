// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:my_tribe/theme/theme.dart';

abstract class Styles {
  static TextStyle mediumBlack12 = TextStyle(
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontSize: Dimens.twelve,
  );

  static TextStyle mediumBlack16 = TextStyle(
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontSize: Dimens.sixteen,
  );

  static TextStyle mediumBlack18 = TextStyle(
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontSize: Dimens.eighteen,
  );

  static TextStyle mediumBlack20 = TextStyle(
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontSize: Dimens.twenty,
  );

  static TextStyle mediumBlack24 = TextStyle(
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontSize: Dimens.twentyFour,
  );

  static TextStyle boldBlack20 = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: Dimens.twenty,
  );

  static TextStyle boldBlack24 = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: Dimens.twentyFour,
  );

  static BoxDecoration cardDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.white.withOpacity(0.15),
        offset: const Offset(1, 1),
        blurRadius: 16.0,
      )
    ],
    border: Border.all(width: Dimens.one, color: Colors.transparent),
    color: Colors.white,
    borderRadius: BorderRadius.circular(Dimens.thirty),
  );

  static BoxDecoration backgroundColor = BoxDecoration(
    borderRadius: BorderRadius.circular(Dimens.zero),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        ColorsValue.startColor,
        ColorsValue.endColor,
      ],
    ),
  );
}
