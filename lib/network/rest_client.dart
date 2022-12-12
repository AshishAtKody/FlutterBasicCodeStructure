import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../session.dart';
import 'dio_logger.dart';

class RestClient {
  final String baseUrl;
  final DioLogger loggingInterceptor;
  final Dio dio;

  RestClient(
    this.baseUrl, {
    required this.dio,
    required this.loggingInterceptor,
  }) {
    dio
      ..options.baseUrl = baseUrl
      ..options.connectTimeout = 30000
      ..options.receiveTimeout = 30000
      ..httpClientAdapter
      ..options.headers = {
        "Authorization": "Bearer ${Session.getUserAccessToken()}",
        "Accept": "application/json",
        "contentType": "application/json",
        "Accept-Language": Session.getAppLanguage(),
      };

    if (kDebugMode) dio.interceptors.add(loggingInterceptor);
  }

  Future<Response> postData(
    String endpoint,
    dynamic req,
    CancelToken ct,
  ) async {
    try {
      /* final cancelToken = CancelToken();
      ref.onDispose(cancelToken.cancel);*/

      dio.options.headers.addAll({
        "Authorization": "Bearer ${Session.getUserAccessToken()}",
        "Accept-Language": Session.getAppLanguage(),
      });

      return await dio.post(endpoint, data: jsonEncode(req), cancelToken: ct);
    } catch (e) {

      rethrow;
    }
  }
}
