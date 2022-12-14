import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static bool isDarkMode = false;

  static const Color primary = Color(0xff1A2D31);
  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xff000000);
  static const Color scaffoldBG = Color(0xffFBFBFB);
  static const Color lightGreenC5CCC4 = Color(0xffC5CCC4);
  static const Color grey5B5B5B = Color(0xff5B5B5B);
  static const Color greyCFCFCF = Color(0xffCFCFCF);
  static const Color grey8A8A8A = Color(0xff8A8A8A);
  static const Color greyE6E6E6 = Color(0xffE6E6E6);
  static const Color grey6B6B6B = Color(0xff6B6B6B);
  static const Color pinch = Color(0xffDAA16A);
  static const Color yellow = Color(0xffFFB156);
  static const Color blue3E565B = Color(0xff3E565B);
  static const Color transparent = Color(0x00000000);
  static const Color red = Color(0xffE34850);
  static const Color lightRed = Color(0xffFA6063);
  static const Color blue = Color(0xff007AFF);

  /*static Color ScaffoldBG = const Color(0xffF5F6F9);
  static Color ScaffoldBGDarkMode = const Color(0xff191919);
  static Color primary = const Color(0xff1A2D31);
  static Color primaryLight = const Color(0xffD5CEFF);
  static Color LightPurple = const Color(0xffF5F4F9);
  static Color Black = const Color(0xff1D0330);
  static Color BlackOrigin = const Color(0xff111111);
  static Color White = const Color(0xffFFFFFF);
  static Color BGLightGrey = const Color(0xffF5F6F9);
  static Color SearchFont = const Color(0xff858585);
  static Color MainFont = const Color(0xff4A4949);
  static Color TextGrey = const Color(0xff979797);
  static Color DarkGrey = const Color(0xff4E4E4E);
  static Color LightGrey = const Color(0xff979797);
  static Color DarkRed = const Color(0xffFF3B3B);
  static Color HintText = const Color(0xffB8B8B8);
  static Color Transparent = const Color(0x00000000);
  static Color GreyCardBg = const Color(0xffDCDCDC);
  static Color DarkBlue = const Color(0xff1D0330);
  static Color Red = const Color(0xffF35353);
  static Color Yellow = const Color(0xffFFBD19);
  static Color DarkPurple = const Color(0xff6622BD);
  static Color DarkGreen = const Color(0xff009C4D);
  static Color DarkGreenNew = const Color(0xff00994B);
  static Color LightRed = const Color(0xffF85757);
  static Color Grey = const Color(0xffE8E8EC);
  static Color GreyNew = const Color(0xffCFCFCF);
  static Color WhiteNew = const Color(0xffFCFCFC);
  static Color BlackNew = const Color(0xff5B5B5B);
  static Color SwithcInActive = const Color(0xfff5f5f6);
  static Color Grey2 = const Color(0xff707070);
  static Color GreyShadow = const Color(0xff707070);
  static Color Blue = const Color(0xff007AFF);
  static Color CalenderBtn = const Color(0xffD0D3DD);*/

  MaterialColor colorPrimary = MaterialColor(0xff1A2D31, colorSwathes);

  static Map<int, Color> colorSwathes = {
    50: const Color.fromRGBO(26, 45, 49, .1),
    100: const Color.fromRGBO(26, 45, 49, .2),
    200: const Color.fromRGBO(26, 45, 49, .3),
    300: const Color.fromRGBO(26, 45, 49, .4),
    400: const Color.fromRGBO(26, 45, 49, .5),
    500: const Color.fromRGBO(26, 45, 49, .6),
    600: const Color.fromRGBO(26, 45, 49, .7),
    700: const Color.fromRGBO(26, 45, 49, .8),
    800: const Color.fromRGBO(26, 45, 49, .9),
    900: const Color.fromRGBO(26, 45, 49, 1),
  };

  static Color textByTheme() => isDarkMode ? primary : white;

  static Color textGreyByTheme() => isDarkMode ? white : white;

  static Color searchFontByTheme() => isDarkMode ? primary : white;

  static Color buttonBGGreyByTheme() => isDarkMode ? primary : white;

  static Color imageColorByTheme() => isDarkMode ? primary : white;

  static Color drawerBgByTheme() => isDarkMode ? black : scaffoldBG;

  static Color textMainFontByTheme() => isDarkMode ? white : primary;

  static Color whiteBlackByTheme() => isDarkMode ? white : black;

  static Color textLightGreyByTheme() => isDarkMode ? white : grey5B5B5B;

  static Color darkByScaffoldTheme() => isDarkMode ? black : white;

  static Color scaffoldBGByTheme() => isDarkMode ? black : scaffoldBG;

  static Color textDarkGreyByTheme() => isDarkMode ? grey5B5B5B : primary;

  static Color cardBGByTheme() => isDarkMode ? grey5B5B5B : white;

  static Color buttonFGByTheme(bool isOn) => isOn
      ? white
      : isDarkMode
          ? white
          : primary;

  static Color buttonBGByTheme(bool isOn) => isOn
      ? isDarkMode
          ? primary
          : white
      : isDarkMode
          ? primary
          : grey5B5B5B;

  static Color buttonBorderByTheme() => isDarkMode ? white : primary;

  static Color dividerByTheme() => isDarkMode ? white : grey5B5B5B;

  static Color dialogBGByTheme() => isDarkMode ? white : black;

  static Color textFieldTextByTheme() => isDarkMode ? primary : grey5B5B5B;

  static Color textFieldBorderColorByTheme() =>
      isDarkMode ? primary : grey5B5B5B;

  static Color textFieldDisableBorderColorByTheme() =>
      isDarkMode ? white : transparent;

  static Color suggestionTextByTheme() => isDarkMode ? primary : grey8A8A8A;

  static Color whiteBlackNewByTheme() => isDarkMode ? white : grey8A8A8A;

  static Color blackWhiteByTheme() => isDarkMode ? white : black;

  static Color blackNewLightPurpleByTheme() => isDarkMode ? black : primary;

  static Color darkPurpleWhiteByTheme() => isDarkMode ? white : primary;

  static Color primaryWhiteByTheme() => isDarkMode ? white : primary;

  static Color whiteGreyNewByTheme() => isDarkMode ? white : black;

  static Color greyTransparentByTheme() =>
      isDarkMode ? transparent : grey8A8A8A;

  static Color greyNewWhiteByTheme() => isDarkMode ? white : grey8A8A8A;
}
