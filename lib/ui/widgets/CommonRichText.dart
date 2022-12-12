import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_theme.dart';

class CommonRichText extends StatelessWidget {
  String startTxt;
  String endTxt;
  Color clrStart;
  Color clrEnd;
  double? fontSize;
  TextAlign textAlign;

  CommonRichText(
      {this.startTxt = "",
      this.endTxt = "",
      this.fontSize = 12,
      this.clrStart = Colors.black,
      this.clrEnd = Colors.black,
      this.textAlign = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: startTxt,
            style: TextStyle(
                fontSize: fontSize,
                fontWeight: AppTheme.fwRegular,
                fontFamily: AppTheme.fontFamily,
                color: clrStart),
          ),
          TextSpan(
            text: " " + endTxt,
            style: TextStyle(
                fontSize: fontSize ?? 20.sp,
                fontWeight: AppTheme.fwRegular,
                fontFamily: AppTheme.fontFamily,
                color: clrEnd),
          ),
        ],
      ),
    );
  }
}
