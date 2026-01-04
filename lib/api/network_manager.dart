import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_study/api/api_client.dart';
import 'package:flutter_study/common/global_state.dart';
import 'package:flutter_study/common/logger_mixin.dart';
import 'package:flutter_study/utils/auth_utils.dart';

const int timeOut = 15;

class NetworkManager with LoggerMixin {
  static final NetworkManager _instance = NetworkManager._internal();

  factory NetworkManager() => _instance;

  late Dio _dio;
  final String baseUrl = "https://www.19lou.com"; // 默认 Base URL
  //需要抓包时，设置为true
  final bool needCapturePackages = false;

  NetworkManager._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: timeOut),
        receiveTimeout: const Duration(seconds: timeOut),
        responseType: ResponseType.json,
        headers: {
          "User-Agent": "nineteenlou/CS_Android_Client/Mi9 Pro 5G 11 9.6.2",
          "Connection": "keep-alive",
          "Accept-Encoding": "gzip",
          "Charset": "UTF-8",
        },
      ),
    );
    setCanCapturePackages(_dio);
    // 添加公共参数拦截器
    _dio.interceptors.add(CommonParamsInterceptor());
    // 添加自定义的响应拦截器
    _dio.interceptors.add(CustomResponseInterceptor());
    // 添加日志拦截器
    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(responseBody: true, requestBody: true, request: true),
      );
    }
  }

  Dio get dio => _dio;

  ApiClient getApiClient() {
    return ApiClient(dio);
  }

  /// 创建一个使用指定 baseUrl 的临时 ApiClient，不影响全局单例
  ApiClient withOtherBaseUrl(String newBaseUrl) {
    final tempDio = Dio(
      BaseOptions(
        baseUrl: newBaseUrl,
        connectTimeout: const Duration(seconds: timeOut),
        receiveTimeout: const Duration(seconds: timeOut),
        responseType: ResponseType.json,
      ),
    );
    setCanCapturePackages(tempDio);
    // 重新添加拦截器（关键：不要共享原拦截器实例）
    tempDio.interceptors.add(CommonParamsInterceptor());
    tempDio.interceptors.add(CustomResponseInterceptor());

    // 调试模式下加日志
    if (kDebugMode) {
      tempDio.interceptors.add(
        LogInterceptor(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
          error: true,
          logPrint: (msg) {
            // 完整打印日志，避免被截断
            logger.d("Dio Log: $msg");
          },
        ),
      );
    }

    return ApiClient(tempDio);
  }

  // 禁用 HTTPS 证书校验（抓包/测试环境用）
  void setCanCapturePackages(Dio dio) {
    if (!kDebugMode || !needCapturePackages) {
      return;
    }
    dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final client = HttpClient();
        // 禁用 HTTPS 证书校验（抓包/测试环境用）
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        client.findProxy = (uri) {
          // 格式：PROXY 电脑局域网IP:端口; DIRECT（DIRECT表示代理不可用时直连）
          return "PROXY 172.16.112.9:8866; DIRECT";
        };
        return client;
      },
    );
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
