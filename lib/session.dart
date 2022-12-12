
import 'package:hive/hive.dart';

import 'models/login_response_model.dart';

const String KEY_APP_LANGUAGE = "key_application_language";
const String KEY_IS_ONBOARDING_SHOWED = "key_is_onboarding_showed";
const String KEY_USER_DATA = "key_user_data";
const String KEY_USER_ACCESS_TOKEN = 'key_user_access_token';
const String KEY_DEVICE_ID = "key_device_id";
const String KEY_USER_REFRESH_TOKEN = 'key_user_refresh_token';
const String KEY_FCM_DEVICE_TOKEN = 'key_fcm_device_token';
const String KEY_USER_ENTITY_ID = 'key_user_entity_id';
const String KEY_APP_THEME_DARK = 'key_app_theme_dark';
const String KEY_USER_STATUS = 'key_user_status';
const String KEY_USER_LOGIN = 'key_user_login';
const String KEY_USER_IMAGE = 'key_user_image';

class Session  {
  Session._();

  static var userBox = Hive.box('userBox');

  static LoginData? loginData() =>
      userBox.get(KEY_USER_DATA, defaultValue: null);

  static String getUserAccessToken() {
    return loginData()?.token ?? "";
  }

  static String getAppLanguage() => (userBox.get(KEY_APP_LANGUAGE) ?? "en");

  bool getIsOnBoardingShowed() =>
      (userBox.get(KEY_IS_ONBOARDING_SHOWED) ?? false);

  String getDeviceID() => (userBox.get(KEY_DEVICE_ID) ?? "");

  String getDeviceFCMToken() => (userBox.get(KEY_FCM_DEVICE_TOKEN) ?? "123456");

  String getUserData() => (userBox.get(KEY_USER_DATA) ?? "");

  String getUserStatus() => (userBox.get(KEY_USER_STATUS) ?? "");

  String getUserEntityId() => (userBox.get(KEY_USER_ENTITY_ID) ?? "");

  String getUserImage() => (userBox.get(KEY_USER_IMAGE) ?? "");

  bool? getIsAppThemeDark() => (userBox.get(KEY_APP_THEME_DARK));

  //Save Local Data
  static saveLocalData(String key, value) {
    userBox.put(key, value);
  }
}
