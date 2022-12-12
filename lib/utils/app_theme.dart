import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  static String fontFamily = 'Nunito';
  static FontWeight fwThin = FontWeight.w100;
  static FontWeight fwExtraLight = FontWeight.w200;
  static FontWeight fwLight = FontWeight.w300;
  static FontWeight fwRegular = FontWeight.w400;
  static FontWeight fwMedium = FontWeight.w500;
  static FontWeight fwSemiBold = FontWeight.w600;
  static FontWeight fwBold = FontWeight.w700;
  static FontWeight fwExtraBold = FontWeight.w800;

  static var myMaterialTheme = ThemeData(
    fontFamily: fontFamily,
    hintColor: AppColors.clrSuggestionTextByTheme(),
    unselectedWidgetColor: AppColors.clrTextByTheme(),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColors.clrTextByTheme(),
      secondary: AppColors.clrTextGreyByTheme(),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.clrWhiteBlackByTheme(),
    ),
  );

  static var appTextRegular = TextStyle(
      fontSize: 14,
      fontFamily: fontFamily,
      color: AppColors.clrWhiteBlackByTheme());

  static var appTextSmall = TextStyle(
      fontSize: 12,
      fontFamily: fontFamily,
      color: AppColors.clrWhiteBlackByTheme());

  static var appTextLabel = TextStyle(
      fontSize: 16,
      fontFamily: fontFamily,
      color: AppColors.clrWhiteBlackByTheme());

  static var appTextFormFields = TextStyle(
      fontSize: 16,
      fontFamily: fontFamily,
      color: AppColors.clrWhiteBlackByTheme());

  static var hintStyle = AppTheme.appTextFormFields
      .copyWith(color: AppColors.clrSuggestionTextByTheme(), fontSize: 14);
}
