import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_theme.dart';

class CommonText extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? fontSize;
  final Color? clrFont;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;

  CommonText(
      {this.title = "",
      this.fontWeight,
      this.fontStyle,
      this.fontSize,
      this.clrFont,
      this.maxLines,
      this.textAlign,
      this.textDecoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textScaleFactor: 1.0,
      //-- will not change if system fonts size changed
      maxLines: maxLines ?? 1,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontFamily: AppTheme.fontFamily,
          fontWeight: fontWeight ?? AppTheme.fwRegular,
          fontSize: fontSize ?? 14.sp,
          color: clrFont ?? AppColors.clrBlack,
          fontStyle: fontStyle ?? FontStyle.normal,
          decoration: textDecoration ?? TextDecoration.none),
    );
  }
}
