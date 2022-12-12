import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_theme.dart';

class RoundButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  final double? fontSize;
  final double? minWidth;
  final Color? bgColor;
  final Color? titleColor;
  final bool isEnable;
  final Color borderColor;

  const RoundButton(
      {Key? key,
      this.label = "",
      this.onTap,
      this.fontSize,
      this.minWidth,
      this.bgColor,
      this.titleColor,
      this.isEnable = true,
      this.borderColor = Colors.transparent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: minWidth ?? 130.w,
      child: ElevatedButton(
        // elevation: 0.0,
        onPressed: (isEnable) ? onTap : null,
        // shape: RoundedRectangleBorder(side: BorderSide(
        //     color: borderColor,
        //     width: 1,
        //     style: BorderStyle.solid
        // ), borderRadius: BorderRadius.circular(25.h)),
        // padding: EdgeInsets.all(0.0),
        // splashColor: Color(clrLightPinkGradient),
        child: Ink(
          decoration: BoxDecoration(
              color: (bgColor ?? AppColors.clrPrimary)
                  .withOpacity((isEnable ? 1.0 : 0.4)),
              borderRadius: BorderRadius.circular(25.h)),
          child: Container(
            constraints:
                BoxConstraints(minWidth: minWidth ?? 130.w, minHeight: 50.h),
            alignment: Alignment.center,
            child: Text(
              // getLocalValue(context, label),
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: AppTheme.fontFamily,
                  fontSize: fontSize ?? 16.sp,
                  color: titleColor ?? AppColors.clrWhite,
                  fontWeight: AppTheme.fwRegular),
            ),
          ),
        ),
      ),
    );
  }
}
