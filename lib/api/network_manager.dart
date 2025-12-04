import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_study/api/api_client.dart';
import 'package:flutter_study/utils/auth_utils.dart';
import 'package:flutter_study/utils/global_state.dart';
import 'package:flutter_study/utils/logger_mixin.dart';

class NetworkManager with LoggerMixin {
  static final NetworkManager _instance = NetworkManager._internal();

  factory NetworkManager() => _instance;

  late Dio _dio;
  final String baseUrl = "https://taizhou.19lou.com"; // 默认 Base URL

  NetworkManager._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        responseType: ResponseType.json,
      ),
    );

    // 添加公共参数拦截器
    _dio.interceptors.add(CommonParamsInterceptor());
    // 添加自定义的响应拦截器
    _dio.interceptors.add(CustomResponseInterceptor());
    // 添加日志拦截器（建议只在调试模式下启用）
    _dio.interceptors.add(
      LogInterceptor(responseBody: true, requestBody: true, request: true),
    );
  }

  Dio get dio => _dio;

  // 2. 提供动态修改 Base URL 的方法
  NetworkManager updateBaseUrl(String newBaseUrl) {
    _dio.options.baseUrl = newBaseUrl;
    logger.d("Base URL updated to: ${_dio.options.baseUrl}");
    return this;
  }

  ApiClient getApiClient() {
    return ApiClient(dio);
  }
}

// 3. 公共参数拦截器
class CommonParamsInterceptor extends Interceptor with LoggerMixin {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.method == 'GET') {
      final commonParams = AuthUtils.buildCommonFormParams();
      if (!options.queryParameters.containsKey("uid")) {
        commonParams['uid'] = GlobalState.instance.userId.toString();
      }
      if (!options.queryParameters.containsKey("cityName")) {
        commonParams['cityName'] = GlobalState.instance.cityName;
      }
      options.queryParameters.addAll(commonParams);
    }
    super.onRequest(options, handler);
  }
}

class CustomResponseInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // 直接返回原始响应数据，不进行BaseEntity包装
    if (response.data is String) {
      final str = response.data as String;
      final trimmed = str.trim();
      // 只有看起来像 JSON 对象或数组才解析
      if (trimmed.startsWith('{') || trimmed.startsWith('[')) {
        try {
          response.data = json.decode(trimmed);
        } catch (e) {
          // 解析失败，保留原字符串（比如错误日志）
          // 可选：记录到 logger
        }
      }
    }
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }
}
