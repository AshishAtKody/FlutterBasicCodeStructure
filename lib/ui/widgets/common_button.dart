import 'package:basic_code_structure/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_theme.dart';


/*container with border, height, width,radius,  inkwell for tap
* icon , text, icon, max 2 lines
* prefix , suffix icon properties should be dynamic,
* elevation - default 0
* isEnable flag - optional - default true
* */

class CommonButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  final Color bgColor;
  final Color labelColor;
  final Color? borderColor;
  final double? borderRadius;
  final double? height;
  final double? width;
  final double? textSize;
  final bool isEnable;
  final double? padding;

  const CommonButton(
      {Key? key,
      required this.label,
      required this.onTap,
      required this.bgColor,
      required this.labelColor,
      this.borderColor,
      this.borderRadius,
      this.height,
      this.width,
      this.padding,
      this.isEnable = true,
      this.textSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 49.h,
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: isEnable ? onTap : null,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          padding:
              MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(0.0)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 25.r),
                side: BorderSide(
                    color: !isEnable
                        ? AppColors.clrTextGrey
                        : borderColor ?? bgColor)),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
              !isEnable ? AppColors.clrTextGrey : bgColor),
        ),
        child: Ink(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r)),
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: padding ?? 0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      label,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: textSize ?? 16.sp,
                          fontFamily: AppTheme.fontFamily,
                          color: labelColor,
                          fontWeight: AppTheme.fwMedium),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
