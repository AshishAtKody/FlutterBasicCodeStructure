import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {

  String toStringWithCustomDate(String outputFormat) {
    if(this == null){
      return "";
    }
    return DateFormat(outputFormat).format(this);
  }

}

extension TimeExtension on TimeOfDay {

  bool isEqual(TimeOfDay time){
    return this == time;
  }

  bool isBefore(TimeOfDay time){
    int _startSeconds = (hour * 3600) + (minute * 60);
    int _endSeconds = (time.hour * 3600) + (time.minute * 60);
    return _startSeconds < _endSeconds;
  }

  bool isAfter(TimeOfDay time){
    int _startSeconds = (hour * 3600) + (minute * 60);
    int _endSeconds = (time.hour * 3600) + (time.minute * 60);
    return _startSeconds > _endSeconds;
  }
}