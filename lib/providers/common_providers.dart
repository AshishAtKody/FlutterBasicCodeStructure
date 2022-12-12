
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../network/api_end_points.dart';
import '../network/dio_logger.dart';
import '../network/rest_client.dart';
import '../utils/darkmode/dark_mode_controller.dart';

final darkProvider = ChangeNotifierProvider((ref)=> DarkModeController());

final dioProvider = Provider<RestClient> ((ref) {
  return RestClient(ApiEndPoints.strBaseUrl, dio: Dio(), loggingInterceptor: DioLogger());
});