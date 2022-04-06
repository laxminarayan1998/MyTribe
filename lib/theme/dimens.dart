// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Dimens {
  static double zero = 0.sp;
  static double pointOne = 0.1.sp;
  static double pointTwo = 0.2.sp;
  static double pointThree = 0.3.sp;
  static double pointFour = 0.4.sp;
  static double pointFive = 0.5.sp;
  static double pointSix = 0.6.sp;
  static double pointSeven = 0.7.sp;
  static double pointEight = 0.8.sp;
  static double pointEightFive = 0.86.sp;
  static double pointNine = 0.9.sp;
  static double one = 1.sp;
  static double two = 2.sp;
  static double three = 3.sp;
  static double four = 4.sp;
  static double five = 5.sp;
  static double six = 6.sp;
  static double seven = 7.sp;
  static double eight = 8.sp;
  static double nine = 9.sp;
  static double ten = 10.sp;
  static double eleven = 11.sp;
  static double twelve = 12.sp;
  static double thirteen = 13.sp;
  static double fourteen = 14.sp;
  static double fifteen = 15.sp;
  static double sixteen = 16.sp;
  static double seventeen = 17.sp;
  static double eighteen = 18.sp;
  static double nineteen = 19.sp;
  static double twenty = 20.sp;
  static double twentyFive = 25.sp;
  static double thirty = 30.sp;
  static double thirtyFive = 35.sp;
  static double fourty = 40.sp;
  static double fifty = 50.sp;
  static double sixty = 60.sp;
  static double seventy = 70.sp;
  static double eighty = 80.sp;
  static double eightyFive = 85.sp;
  static double ninty = 90.sp;
  static double hundred = 100.sp;

  /// Get the height with the percent value of the screen height.
  static double percentHeight(double percentValue) => percentValue.sh;

  /// Get the width with the percent value of the screen width.
  static double percentWidth(double percentValue) => percentValue.sw;

  static SizedBox getBoxWidth(double value) => SizedBox(
        width: percentWidth(value),
      );
  static SizedBox getBoxHeight(double value) => SizedBox(
        height: percentHeight(value),
      );

  static SizedBox box0 = const SizedBox.shrink();

  static SizedBox boxHeight3 = SizedBox(height: Dimens.three);
  static SizedBox boxHeight5 = SizedBox(height: Dimens.five);
  static SizedBox boxHeight10 = SizedBox(height: Dimens.ten);
  static SizedBox boxHeight15 = SizedBox(height: Dimens.fifteen);
  static SizedBox boxHeight20 = SizedBox(height: Dimens.twenty);

  static SizedBox boxWidth3 = SizedBox(width: Dimens.three);
  static SizedBox boxWidth5 = SizedBox(width: Dimens.five);
  static SizedBox boxWidth10 = SizedBox(width: Dimens.ten);
  static SizedBox boxWidth15 = SizedBox(width: Dimens.fifteen);
  static SizedBox boxWidth20 = SizedBox(width: Dimens.twenty);

  static EdgeInsets edgeInsets0 = EdgeInsets.all(Dimens.zero);
  static EdgeInsets edgeInsets4 = EdgeInsets.all(Dimens.four);
  static EdgeInsets edgeInsets6 = EdgeInsets.all(Dimens.six);
  static EdgeInsets edgeInsets8 = EdgeInsets.all(Dimens.eight);
  static EdgeInsets edgeInsets10 = EdgeInsets.all(Dimens.ten);
  static EdgeInsets edgeInsets12 = EdgeInsets.all(Dimens.twelve);
  static EdgeInsets edgeInsets14 = EdgeInsets.all(Dimens.fourteen);
  static EdgeInsets edgeInsets16 = EdgeInsets.all(Dimens.sixteen);
  static EdgeInsets edgeInsets20 = EdgeInsets.all(Dimens.twenty);
}
