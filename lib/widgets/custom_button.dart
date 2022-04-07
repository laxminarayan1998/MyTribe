import 'package:flutter/material.dart';
import 'package:my_tribe/theme/theme.dart';

/// A widget which will be used in the forms to allow user to submit the
/// details which were filled by the user.
///
/// [opacity] : The opacity of the widget to show that the widget is not enabled.
/// [disableColor] : The disable color of the widget.
/// [padding] : The padding around the content of the widget.
/// [onTap] : The tap event which will be triggered.
/// [text] : The text which will be shown.
/// [textStyle] : The style of the [text].
class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    this.opacity = 1,
    this.disableColor,
    this.startColor,
    this.endColor,
    this.iconPath,
    this.iconColor,
    this.borderWidth,
    this.borderColor,
    this.padding,
    this.onTap,
    required this.text,
    this.textStyle,
    this.autoFocus = false,
    this.isIconShowLeft = false,
    this.buttonHeight,
    this.borderRadius,
  }) : super(key: key);

  final double opacity;
  final Color? disableColor;
  final Color? startColor;
  final Color? endColor;
  final String? iconPath;
  final Color? iconColor;
  final double? borderWidth;
  final Color? borderColor;
  final EdgeInsets? padding;
  final void Function()? onTap;
  final String? text;
  final TextStyle? textStyle;
  final bool autoFocus;
  final bool isIconShowLeft;
  final double? buttonHeight;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) => Container(
        height: Dimens.fifty,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.0, 1.0],
            colors: [
              endColor!,
              startColor!,
            ],
          ),
          border: Border.all(
              width: borderWidth ?? Dimens.one,
              color: borderColor ?? Colors.transparent),
          borderRadius: BorderRadius.circular(borderRadius ?? Dimens.fifteen),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(borderRadius ?? Dimens.fifteen),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                Dimens.edgeInsets0),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  isIconShowLeft == false
                      ? Text(
                          text!,
                          style: textStyle,
                        )
                      : Container(),
                  if (iconPath != null &&
                      iconPath!.isNotEmpty &&
                      !isIconShowLeft)
                    SizedBox(width: Dimens.five),
                  if (iconPath != null && iconPath!.isNotEmpty)
                    Image(
                      color: iconColor!,
                      width: Dimens.twenty,
                      height: Dimens.twenty,
                      image: AssetImage(iconPath!),
                    ),
                  if (isIconShowLeft) SizedBox(width: Dimens.five),
                  if (isIconShowLeft)
                    Text(
                      text!,
                      style: textStyle,
                    ),
                ],
              ),
            ],
          ),
        ),
      );
}
