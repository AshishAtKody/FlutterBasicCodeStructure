import 'package:basic_code_structure/utils/app_colors.dart';
import 'package:basic_code_structure/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonInputFormField extends StatelessWidget {
  final String? placeholderImage;
  final double? placeholderImageHeight;
  final double? placeholderImageWidth;
  final double? placeholderImageHorizontalPadding;
  final String? placeholderText;
  final TextStyle? placeholderTextStyle;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final double? fieldWidth;
  final double? fieldHeight;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final BorderRadius? borderRadius;
  final TextEditingController textEditingController;
  final TextStyle? fieldTextStyle;
  final int? maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? textInputFormatter;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final TextCapitalization? textCapitalization;
  final bool? isEnable;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final InputDecoration? inputDecoration;
  final String? Function(String?)? validator;

  const CommonInputFormField({
    Key? key,
      this.placeholderImage,
      this.placeholderImageHeight,
      this.placeholderImageWidth,
      this.placeholderImageHorizontalPadding,
      this.placeholderText,
      this.placeholderTextStyle,
      this.hintText,
      this.hintTextStyle,
      this.fieldWidth,
      this.fieldHeight,
      this.backgroundColor,
      this.borderColor,
      this.borderWidth,
      this.borderRadius,
      required this.textEditingController,
      this.fieldTextStyle,
      this.maxLines,
      this.maxLength,
      this.textInputFormatter,
      this.textInputAction,
      this.textInputType,
      this.textCapitalization,
      this.isEnable,
      this.prefixWidget,
      this.suffixWidget,
      this.inputDecoration,
      required this.validator
    }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (((placeholderImage ?? "").isNotEmpty) || ((placeholderText ?? "").isNotEmpty)) Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if ((placeholderImage ?? "").isNotEmpty)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: placeholderImageHorizontalPadding ?? 0.w),
                  child: Image.asset(
                    placeholderImage!,
                    height: placeholderImageHeight ?? 32,
                    width: placeholderImageWidth ?? 32,
                  ),
                ),
              if ((placeholderText ?? "").isNotEmpty)
                Text(
                  placeholderText!,
                  style: placeholderTextStyle ?? TextStyles.regular.copyWith(
                      fontSize: 12.sp,
                      color: AppColors.clrPrimary
                  ),
                ),
            ],
          ),
        ),
        Container(
          height: fieldHeight ?? 46.h,
          width: fieldWidth ?? double.infinity,
          decoration: BoxDecoration(
              color: backgroundColor ?? AppColors.clrWhite,
              borderRadius: borderRadius ?? BorderRadius.circular(10.r),
              border: Border.all(
                  color: borderColor ?? AppColors.clrGreyNew,
                  width: borderWidth ?? 1
              )
          ),
          child: TextFormField(
            cursorColor: AppColors.clrPrimary,
            controller: textEditingController,
            style: fieldTextStyle ?? TextStyles.regular,
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.center,
            maxLines: maxLines ?? 1,
            maxLength: maxLength ?? 1000,
            inputFormatters: textInputFormatter,
            textInputAction: textInputAction ?? TextInputAction.next,
            keyboardType: textInputType ?? TextInputType.text,
            textCapitalization: textCapitalization ?? TextCapitalization.none,
            decoration: InputDecoration(
              enabled: isEnable ?? true,
                counterText: "",
                filled: true,
                fillColor: AppColors.clrTransparent,
                  // contentPadding: prefixIcon != null
                  //     ? const EdgeInsets.only(right: 8.0)
                  //     : const EdgeInsets.only(left: 8.0, right: 8),
                prefixIcon: prefixWidget,
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.clrHintText,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: borderRadius ?? BorderRadius.circular(10.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.clrHintText,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: borderRadius ?? BorderRadius.circular(10.r),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.clrRed,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: borderRadius ?? BorderRadius.circular(10.r),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.clrHintText,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: borderRadius ?? BorderRadius.circular(10.r),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.clrRed,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: borderRadius ?? BorderRadius.circular(10.r),
                ),
                border: InputBorder.none,
              hintText: hintText,
              hintStyle: hintTextStyle
            ),
            onFieldSubmitted: (text) {
              textEditingController.text = text;
            },
            validator: validator,
          ),
        )
      ],
    );
  }
}
