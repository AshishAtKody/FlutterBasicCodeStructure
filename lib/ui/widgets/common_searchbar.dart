import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';
import '../../utils/text_style.dart';

class CommonSearchBar extends StatelessWidget {
  final double? height;
  final String? label;
  final bool? isHomeSearch;
  final Function()? onTap;
  final ValueChanged<String>? onChanged;
  final double? elevation;
  final double? circularValue;
  final Color? clrSplash;
  final Color? clrBG;
  final bool? isRemoveMargin;
  TextEditingController controller;
  FocusNode? focusNode;
  final double? borderRadius;
  final String? hintText;
  final String icSearchIcon;

  CommonSearchBar({
    Key? key,
    this.onTap,
    this.height,
    this.label,
    this.isHomeSearch,
    required this.icSearchIcon,
    this.onChanged,
    this.elevation,
    this.circularValue,
    this.clrSplash,
    this.clrBG,
    this.isRemoveMargin,
    this.borderRadius,
    required this.controller,
    this.focusNode,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isHomeSearch ?? false
        ? InkWell(
            onTap: onTap,
            child: Container(
              height: height ?? 48.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: AppColors.clrGrey),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      icSearchIcon,
                      height: 18.h,
                      width: 18.w,
                      color: AppColors.clrPrimary,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(label ?? "Key_SearchHere...".tr(),
                        style: TextStyle(
                            fontWeight: TextStyles.fwRegular,
                            fontSize: 12.sp,
                            color: AppColors.clrBlack)),
                  ],
                ),
              ),
            ),
          )
        : Container(
            decoration: BoxDecoration(
                color: AppColors.clrCardBGByTheme(),
                borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
                border: Border.all(color: AppColors.clrGrey, width: 0.5.w)),
            height: height ?? 48.h,
            child: InkWell(
              splashColor: clrSplash ?? AppColors.clrDarkGrey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(circularValue ?? 7.r),
              onTap: onTap,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Center(
                  child: TextFormField(
                    controller: controller,
                    focusNode: focusNode,
                    cursorColor: AppColors.clrPrimary,
                    textAlignVertical: TextAlignVertical.center,
                    style: TextStyles.regular
                        .copyWith(color: AppColors.clrBlack),
                    textInputAction: TextInputAction.search,
                    onChanged: onChanged,
                    maxLines: 1,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(60),
                    ],
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      isDense: true,
                      border: InputBorder.none,
                      hintStyle: TextStyles.regular
                          .copyWith(color: AppColors.clrGreyNew),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(
                            top: 10.h, bottom: 10.h, right: 16.w),
                        child: Image.asset(
                          icSearchIcon,
                          height: 18.h,
                          width: 18.w,
                        ),
                      ),
                      prefixIconConstraints:
                          BoxConstraints(minHeight: 10.h, minWidth: 20.w),
                      hintText: hintText,
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
