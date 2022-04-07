// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:my_tribe/theme/theme.dart';

abstract class ColorsValue {
  static const Color startColor = Color(0xFF00E4DF);
  static const Color endColor = Color(0xFFF800FC);
  static const Color startColor2 = Color(0xFFff001f);
  static const Color endColor2 = Color(0xFF5e006e);
  static Color greyOutline2 = const Color(0xffA9A9A9);

  static Gradient bluePinkGradient = const LinearGradient(
    colors: [
      ColorsValue.startColor2,
      ColorsValue.endColor2,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.3, 1],
  );

  static Gradient bluePinkGradient2 = const LinearGradient(
    colors: [
      ColorsValue.startColor2,
      ColorsValue.endColor2,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.3, 1],
  );

  static BoxDecoration cardDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: Colors.white.withOpacity(0.15),
          offset: const Offset(1, 1),
          blurRadius: 16.0)
    ],
    border: Border.all(
      width: Dimens.one,
      color: Colors.transparent,
    ),
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
  );

  static BoxDecoration buttonGrdientDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: Colors.white.withOpacity(0.15),
          offset: const Offset(1, 1),
          blurRadius: 16.0)
    ],
    border: Border.all(
      width: Dimens.one,
      color: Colors.transparent,
    ),
    gradient: const LinearGradient(
      colors: [
        ColorsValue.startColor2,
        ColorsValue.endColor2,
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      stops: [0.3, 1],
    ),
    borderRadius: BorderRadius.circular(10),
  );
}
