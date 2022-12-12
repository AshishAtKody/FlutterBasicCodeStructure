import 'package:flutter/material.dart';

import '../../utils/app_theme.dart';
import 'CommonText.dart';

class CommonTextButton extends StatelessWidget {
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

  CommonTextButton(
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
      this.textDecoration});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style:
          TextButton.styleFrom(primary: clrBgShadow, fixedSize: buttonSizeWH),
      onPressed: onPressed,
      child: CommonText(
        title: title,
        maxLines: maxLines,
        textAlign: textAlign,
        fontWeight: AppTheme.fwBold,
        fontSize: fontSize,
        clrFont: clrFont,
        fontStyle: fontStyle,
        textDecoration: textDecoration,
      ),
    );
  }
}
