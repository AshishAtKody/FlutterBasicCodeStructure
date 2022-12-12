import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../network/api_end_points.dart';
import '../../../network/api_result.dart';
import '../../../network/base_response_model.dart';
import '../../../network/network_exceptions.dart';
import '../../../network/rest_client.dart';
import '../../models/login_response_model.dart';
import '../../providers/common_providers.dart';

final authRepositoryProvider = Provider((ref) {
  return AuthApiRepository(ref.read(dioProvider));
});

class AuthApiRepository {
  final RestClient _restClient;

  AuthApiRepository(this._restClient);

  Future<ApiResult<LoginData>> loginApi(
      Map<String, dynamic> request, CancelToken ct) async {
    try {
      Response apiResponse =
          await _restClient.postData(ApiEndPoints.login, request, ct);

      BaseResponseModel baseResponse =
          baseResponseModelFromJson(json.encode(apiResponse.data));

      if (baseResponse.status != ApiEndPoints.apiStatus_200) {
        return ApiResult.failure(
            error: NetworkExceptions.defaultError(baseResponse.message!));
      } else {
        return ApiResult.success(data: baseResponse.data);
      }
    } catch (err) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(err));
    }
  }

}
