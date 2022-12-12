import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static bool isDarkMode = false;

  static Color clrScaffoldBG = const Color(0xffF5F6F9);
  static Color clrScaffoldBGDarkMode = const Color(0xff191919);
  static Color clrPrimary = const Color(0xff7063BF);
  static Color clrPrimaryLight = const Color(0xffD5CEFF);
  static Color clrLightPurple = const Color(0xffF5F4F9);
  static Color clrBlack = const Color(0xff1D0330);
  static Color clrBlackOrigin = const Color(0xff111111);
  static Color clrWhite = const Color(0xffFFFFFF);
  static Color clrBGLightGrey = const Color(0xffF5F6F9);
  static Color clrSearchFont = const Color(0xff858585);
  static Color clrMainFont = const Color(0xff4A4949);
  static Color clrTextGrey = const Color(0xff979797);
  static Color clrDarkGrey = const Color(0xff4E4E4E);
  static Color clrLightGrey = const Color(0xff979797);
  static Color clrDarkRed = const Color(0xffFF3B3B);
  static Color clrHintText = const Color(0xffB8B8B8);
  static Color clrTransparent = const Color(0x00000000);
  static Color clrGreyCardBg = const Color(0xffDCDCDC);
  static Color clrDarkBlue = const Color(0xff1D0330);
  static Color clrRed = const Color(0xffF35353);
  static Color clrYellow = const Color(0xffFFBD19);
  static Color clrDarkPurple = const Color(0xff6622BD);
  static Color clrDarkGreen = const Color(0xff009C4D);
  static Color clrDarkGreenNew = const Color(0xff00994B);
  static Color clrLightRed = const Color(0xffF85757);
  static Color clrGrey = const Color(0xffE8E8EC);
  static Color clrGreyNew = const Color(0xffCFCFCF);
  static Color clrWhiteNew = const Color(0xffFCFCFC);
  static Color clrBlackNew = const Color(0xff5B5B5B);
  static Color clrSwithcInActive = const Color(0xfff5f5f6);
  static Color clrGrey2 = const Color(0xff707070);
  static Color clrGreyShadow = const Color(0xff707070);
  static Color clrBlue = const Color(0xff007AFF);

  static Color clrCalenderBtn = const Color(0xffD0D3DD);

  MaterialColor colorPrimary = MaterialColor(0xff6A71CE, colorSwathes);

  static Map<int, Color> colorSwathes = {
    50: const Color.fromRGBO(106, 113, 206, .1),
    100: const Color.fromRGBO(106, 113, 206, .2),
    200: const Color.fromRGBO(106, 113, 206, .3),
    300: const Color.fromRGBO(106, 113, 206, .4),
    400: const Color.fromRGBO(106, 113, 206, .5),
    500: const Color.fromRGBO(106, 113, 206, .6),
    600: const Color.fromRGBO(106, 113, 206, .7),
    700: const Color.fromRGBO(106, 113, 206, .8),
    800: const Color.fromRGBO(106, 113, 206, .9),
    900: const Color.fromRGBO(106, 113, 206, 1),
  };

  static Color clrTextByTheme() => isDarkMode ? clrPrimary : clrMainFont;

  static Color clrTextGreyByTheme() => isDarkMode ? clrWhite : clrMainFont;

  static Color clrSearchFontByTheme() =>
      isDarkMode ? clrPrimary : clrSearchFont;

  static Color clrButtonBGGreyByTheme() =>
      isDarkMode ? clrPrimary : clrMainFont;

  static Color clrImageColorByTheme() => isDarkMode ? clrPrimary : clrMainFont;

  static Color clrDrawerBgByTheme() =>
      isDarkMode ? clrScaffoldBGDarkMode : clrWhiteNew;

  static Color clrTextMainFontByTheme() => isDarkMode ? clrWhite : clrMainFont;

  static Color clrWhiteBlackByTheme() => isDarkMode ? clrWhite : clrBlack;

  static // Color clrTextDarkGreyByTheme() => isDarkMode ? clrHintText : clrDarkGrey;
      Color clrTextLightGreyByTheme() => isDarkMode ? clrWhite : clrTextGrey;

  static Color clrDarkByScaffoldTheme() =>
      isDarkMode ? clrBlackOrigin : clrWhite;

  static Color clrScaffoldBGByTheme() =>
      isDarkMode ? clrScaffoldBGDarkMode : clrWhiteNew;

  static Color clrTextDarkGreyByTheme() =>
      isDarkMode ? clrGreyNew : clrDarkPurple;

  static Color clrCardBGByTheme() =>
      isDarkMode ? clrDarkGrey : clrWhite; //clrDarkGrey
  static Color clrButtonFGByTheme(bool isOn) => isOn
      ? clrWhite
      : isDarkMode
          ? clrWhite
          : clrDarkBlue;

  static Color clrButtonBGByTheme(bool isOn) => isOn
      ? isDarkMode
          ? clrPrimary
          : clrMainFont
      : isDarkMode
          ? clrPrimary
          : clrHintText;

  static Color clrButtonBorderByTheme() => isDarkMode ? clrWhite : clrMainFont;

  static Color clrDividerByTheme() => isDarkMode ? clrWhite : clrTextGrey;

  static Color clrDialogBGByTheme() => isDarkMode ? clrWhite : clrBlackNew;

  static Color clrTextFieldTextByTheme() =>
      isDarkMode ? clrPrimary : clrMainFont;

  static Color clrTextFieldBorderColorByTheme() =>
      isDarkMode ? clrPrimary : clrHintText;

  static Color clrTextFieldDisableBorderColorByTheme() =>
      isDarkMode ? clrWhite : clrTransparent;

  static Color clrSuggestionTextByTheme() =>
      isDarkMode ? clrPrimary : clrTextGrey;

  static Color clrWhiteBlackNewByTheme() => isDarkMode ? clrWhite : clrBlackNew;

  static Color clrBlackWhiteByTheme() => isDarkMode ? clrWhite : clrBlack;

  static Color clrBlackNewLightPurpleByTheme() =>
      isDarkMode ? clrBlackNew : clrLightPurple;

  static Color clrDarkPurpleWhiteByTheme() =>
      isDarkMode ? clrWhite : clrDarkPurple;

  static Color clrPrimaryWhiteByTheme() => isDarkMode ? clrWhite : clrPrimary;

  static Color clrWhiteGreyNewByTheme() => isDarkMode ? clrWhite : clrBlackNew;

  static Color clrGreyTransparentByTheme() =>
      isDarkMode ? clrTransparent : clrGrey;

  static Color clrGreyNewWhiteByTheme() => isDarkMode ? clrWhite : clrGreyNew;
}
