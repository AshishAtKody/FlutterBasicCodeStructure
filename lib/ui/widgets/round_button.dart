import 'package:basic_code_structure/utils/app_colors.dart';
import 'package:basic_code_structure/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final BorderRadius? borderRadius;
  final String? leftImage;
  final double? leftImageHeight;
  final double? leftImageWidth;
  final double? leftImageHorizontalPadding;
  final String? rightImage;
  final double? rightImageHeight;
  final double? rightImageWidth;
  final double? rightImageHorizontalPadding;
  final String? buttonText;
  final int? buttonMaxLine;
  final TextStyle? buttonTextStyle;
  final double? buttonHorizontalPadding;
  final GestureTapCallback? onTap;

  const RoundButton(
      {Key? key,
        this.height,
        this.width,
        this.backgroundColor,
        this.borderColor,
        this.borderWidth,
        this.borderRadius,
        this.leftImage,
        this.leftImageHeight,
        this.leftImageWidth,
        this.leftImageHorizontalPadding,
        this.rightImage,
        this.rightImageHeight,
        this.rightImageWidth,
        this.rightImageHorizontalPadding,
        this.buttonText,
        this.buttonMaxLine,
        this.buttonTextStyle,
        this.buttonHorizontalPadding,
        this.onTap,
      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 46.h,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
            color: backgroundColor ?? AppColors.primary,
            borderRadius: borderRadius ?? BorderRadius.circular(10.r),
            border: Border.all(
                color: borderColor ?? AppColors.transparent,
                width: borderWidth ?? 0
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if ((leftImage ?? "").isNotEmpty)
              Padding(
              padding: EdgeInsets.symmetric(horizontal: leftImageHorizontalPadding ?? 12.w),
              child: Image.asset(
                leftImage!,
                height: leftImageHeight,
                width: leftImageWidth,
              ),
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: buttonHorizontalPadding ?? 0),
                child: Text(
                  buttonText ?? "",
                  textAlign: TextAlign.center,
                  maxLines: buttonMaxLine ?? 1,
                  style: buttonTextStyle ?? TextStyles.regular.copyWith(
                    fontSize: 14.sp,
                      color: AppColors.white
                  ),
                ),
              ),
            ),

            if ((rightImage ?? "").isNotEmpty)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: rightImageHorizontalPadding ?? 12.w),
                child: Image.asset(
                  rightImage!,
                  height: rightImageHeight,
                  width: rightImageWidth,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/*
Widget Usage
RoundButton(
          buttonText: "Login",
          onTap: () {

          },
        )
* */
