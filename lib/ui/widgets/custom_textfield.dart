import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_theme.dart';

class CustomTextField extends StatelessWidget {
  BuildContext context;
  TextEditingController? mycontroller;
  ValueChanged<String>? onChanged;
  List<TextInputFormatter>? inputFormatters;
  TextInputAction? textInputAction;
  TextInputType? textInputType;
  String? placeHolderMessage;
  String? errorMessage;
  String? hintText;
  bool obscureText;
  bool enable;
  FocusNode? myfocus;
  int? maxLine;
  int? maxLength;
  double? height;
  Widget? preFix;
  Widget? sufFix;
  double? leftPadding;
  Color? bgColor;
  Color? borderColor;
  Function()? onEditingComplete;
  double? borderRadius;
  bool? paddingNeed;
  bool? marginNeed;

  CustomTextField({
    Key? key,
    required this.context,
    required this.mycontroller,
    this.onChanged,
    this.textInputType,
    this.textInputAction,
    this.placeHolderMessage = "",
    this.errorMessage = "",
    this.hintText = "",
    this.obscureText = false,
    this.enable = true,
    this.inputFormatters,
    this.myfocus,
    this.maxLine,
    this.height,
    this.preFix,
    this.sufFix,
    this.borderRadius,
    this.leftPadding,
    this.paddingNeed = true,
    this.marginNeed = true,
    required this.bgColor,
    this.maxLength,
    this.onEditingComplete,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height ?? ((Platform.isIOS == true) ? 45.h : 49.h),
          margin: marginNeed == true
              ? EdgeInsets.symmetric(vertical: 0.h, horizontal: 15.w)
              : null,
          padding: paddingNeed == true
              ? EdgeInsets.symmetric(
                  vertical: 0.h, horizontal: leftPadding ?? 10.w)
              : null,
          decoration: BoxDecoration(
              color: bgColor ?? AppColors.clrDarkByScaffoldTheme(),
              borderRadius: borderRadius == null
                  ? BorderRadius.circular(30.r)
                  : BorderRadius.circular(borderRadius!),
              border: Border.all(
                  color: borderColor ?? AppColors.clrGrey, width: 1.h)),
          alignment: Alignment.center,
          child: TextFormField(
            autofocus: false,
            maxLines: maxLine ?? 1,
            enabled: enable,
            controller: mycontroller,
            onChanged: onChanged,
            focusNode: myfocus,
            cursorColor: AppColors.clrTextGreyByTheme(),
            obscureText: obscureText,
            keyboardType: textInputType,
            textInputAction: textInputAction,
            maxLength: maxLength,
            onEditingComplete: onEditingComplete,
            style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.clrTextByTheme(),
                fontWeight: AppTheme.fwSemiBold),
            inputFormatters: inputFormatters,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              // isDense: true,
              suffixIcon: sufFix,
              contentPadding:
                  EdgeInsets.only(left: 20.w, top: 20.h, right: 20.w),
              // contentPadding: EdgeInsets.only(left: 20.w,top: 15.h,right: 20.w, bottom: 15.h),
              //   prefix: preFix,
              labelText: placeHolderMessage,
              alignLabelWithHint: true,
              prefixIcon: preFix,
              hintStyle: TextStyle(
                  fontFamily: AppTheme.fontFamily,
                  fontSize: 14.sp,
                  color: AppColors.clrHintText,
                  fontWeight: AppTheme.fwMedium),
              labelStyle: TextStyle(
                  fontFamily: AppTheme.fontFamily,
                  fontSize: 15.sp,
                  color: AppColors.clrTextGrey,
                  fontWeight: AppTheme.fwRegular),
              errorStyle: TextStyle(color: AppColors.clrBlack),
              focusedBorder: OutlineInputBorder(
                borderRadius: borderRadius == null
                    ? BorderRadius.circular(30.r)
                    : BorderRadius.circular(borderRadius!),
                borderSide: BorderSide(color: AppColors.clrGrey),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: borderRadius == null
                    ? BorderRadius.circular(30.r)
                    : BorderRadius.circular(borderRadius!),
                borderSide: BorderSide(color: AppColors.clrGrey),
              ),
              border: OutlineInputBorder(
                borderRadius: borderRadius == null
                    ? BorderRadius.circular(30.r)
                    : BorderRadius.circular(borderRadius!),
                borderSide: BorderSide(color: AppColors.clrGrey),
              ),
              hintText: hintText,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              disabledBorder: OutlineInputBorder(
                borderRadius: borderRadius == null
                    ? BorderRadius.circular(30.r)
                    : BorderRadius.circular(borderRadius!),
                borderSide: BorderSide(color: AppColors.clrGrey),
              ),
            ),
          ),
        ),
        (errorMessage != null && errorMessage != "")
            ? Padding(
                padding: EdgeInsets.only(top: 6.h, bottom: 6.h, left: 20.w),
                child: Text(
                  errorMessage ?? "",
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.clrDarkRed,
                      fontWeight: AppTheme.fwRegular),
                ),
              )
            : Container()
      ],
    );
  }
}
