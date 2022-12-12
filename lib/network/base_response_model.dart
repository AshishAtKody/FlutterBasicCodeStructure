
import 'dart:convert';

BaseResponseModel baseResponseModelFromJson(String str) => BaseResponseModel.fromJson(json.decode(str));

String baseResponseModelToJson(BaseResponseModel data) => json.encode(data.toJson());

class BaseResponseModel {
  BaseResponseModel({
    this.success,
    this.status,
    this.message,
    this.data,
  });

  String? success;
  String? status;
  String? message;
  dynamic? data;

  factory BaseResponseModel.fromJson(Map<String, dynamic> json) => BaseResponseModel(
    success: json["success"],
    status: json["status"],
    message: json["message"],
    data: json["data"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "status": status,
    "message": message,
    "data": data,
  };
}
