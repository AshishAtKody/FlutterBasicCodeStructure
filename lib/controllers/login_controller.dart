import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/src/consumer.dart';

import '../models/login_response_model.dart';
import '../repositories/auth/auth_api_repository.dart';

class LoginController extends StateNotifier<AsyncValue<LoginData?>> {
  LoginController(this.authRepository) : super(const AsyncData(null));

  AuthApiRepository authRepository;

  Future login(WidgetRef ref, CancelToken cancelToken) async {

   state = const AsyncLoading();

    Map<String, dynamic> request = {
      "user_type": "getUserStatus()",
      "country_id": "countryData?.id",
      "mobile_number": "strMobileNumber",
      "password": "strPassword",
      "device_type": "getDeviceType()",
      "device_token": "getDeviceFCMToken()"
    };

    var result = await authRepository.loginApi(request, cancelToken);

    print(result);

    result.when(success: (loginData) {
      state = AsyncData(loginData);
    }, failure: (err) {
      state = AsyncError(err, StackTrace.fromString("stackTraceString"));
    });
  }

  Future performButtonAction() async {

    state =  const AsyncLoading();

    await Future.delayed(const Duration(milliseconds: 500));

    //state = AsyncError("err", StackTrace.fromString("stackTraceString"));
    state = const  AsyncData(null);
  }

  Future perform2ButtonAction() async {

    state = const AsyncLoading();
    await  Future.delayed(const Duration(milliseconds: 500));

    state =const  AsyncData(null);

   // state = AsyncError("err", StackTrace.fromString("stackTraceString"));

  }
}
