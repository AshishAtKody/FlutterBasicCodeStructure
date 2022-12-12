
import 'package:basic_code_structure/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:basic_code_structure/session.dart';

class DarkModeController with ChangeNotifier {
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  void updateIsDarkMode(bool fromSetting, bool value) {
    if(fromSetting){
      Session.saveLocalData(KEY_APP_THEME_DARK, value);
    }
    _darkTheme = value;
    AppColors.isDarkMode = _darkTheme;
    print("is Dark mode: ${AppColors.isDarkMode}");
    notifyListeners();
  }
}