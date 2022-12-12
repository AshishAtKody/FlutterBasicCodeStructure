import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_theme.dart';
import 'CommonText.dart';

class CommonTextButtonIcon extends StatelessWidget{
  final String title;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? fontSize;
  final Size? buttonSizeWH;
  final Color? clrBgShadow;
  final Color? clrFont;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final VoidCallback? onPressed;
  final String iconString;

  CommonTextButtonIcon(
      {this.onPressed,
      this.title = "",
      this.fontWeight,
      this.fontStyle,
      this.fontSize,
      this.buttonSizeWH,
      this.clrFont,
      this.clrBgShadow,
      this.maxLines,
      this.textAlign,
      this.textDecoration,
      required this.iconString});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style:
          TextButton.styleFrom(primary: AppColors.clrLightGrey, fixedSize: buttonSizeWH),
      onPressed: onPressed,
      icon: Image.asset(iconString),
      label: CommonText(
        title: title,
        maxLines: maxLines,
        textAlign: textAlign,
        fontWeight: AppTheme.fwRegular,
        fontSize: fontSize,
        clrFont: clrFont,
        fontStyle: fontStyle,
        textDecoration: textDecoration,
      ),
    );
  }
}
