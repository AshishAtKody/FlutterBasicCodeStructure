import 'package:easy_localization/easy_localization.dart';

extension StringExtension on String {
  String get capsFirstLetterOfSentence => '${this[0].toUpperCase()}${this.substring(1)}';

  String get allInCaps => this.toUpperCase();

  String get capitalizeFirstLetterOfSentence => this.split(" ").map((str) => str.capsFirstLetterOfSentence).join(" ");

  String get removeWhiteSpace => this.replaceAll(" ", "");

  bool get isEmptyString => this.removeWhiteSpace.length == 0;

  String get encodedURL => Uri.encodeFull(this);

  bool get isTrue => (this == "1" || this.toLowerCase() == "t" || this.toLowerCase() == "true" || this.toLowerCase() == "y" || this.toLowerCase() == "yes");

  String get localized => this.tr();

  ///Date Format
  String getCustomDateTimeFormat(String inputFormat, String outputFormat, {bool isCheckPresent = false}) {
    if(this == "" || inputFormat== "" || outputFormat== ""){
      return "";
    }
    DateTime dateTime = getDateTimeObject(inputFormat);
    String value = DateFormat(outputFormat).format(dateTime);
    if(isCheckPresent){
      DateTime _currentDateTime = DateTime.now();
      if(dateTime.year == _currentDateTime.year && dateTime.month == _currentDateTime.month && dateTime.day == _currentDateTime.day){
        value = "Present";
      }
    }
    return value;
  }

  DateTime getDateTimeObject(String inputFormat){
    return DateFormat(inputFormat).parse(this);
  }

  String getCustomDateTimeFromUTC(String outputFormat){
    if(this != "" && outputFormat != ""){
      try {
        DateTime temp = DateTime.parse(this).toUtc().toLocal();
        return DateFormat(outputFormat).format(temp);
      } catch (e){
        return DateFormat(outputFormat).format(DateTime.now());
      }
    }
    else{
      return "";
    }
  }

  ///Validations
  bool isPasswordValid() {
    if(length >= 8 && length <= 15) {
      return true;
    } else {
      return false;
    }
  }

  bool isPhoneNumberValid() {
    if (length > 0 && length == 10) {
      return true;
    } else {
      return false;
    }
  }

  bool isEmailValid() {
    Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    // RegExp regex = new RegExp(pattern);
    RegExp regex = RegExp(pattern.toString());
    if (!(regex.hasMatch(this))) {
      return false;
    } else {
      return true;
    }
  }

  bool isWebsiteValid() {
    final urlRegExp = RegExp(r"((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?");

    if (!(urlRegExp.hasMatch(this))) {
      return false;
    } else {
      return true;
    }
  }

}