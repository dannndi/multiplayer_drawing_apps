import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

extension HttpClient on Dio {
  Dio initClient(String baseUrl) {
    options.baseUrl = baseUrl;
    options.connectTimeout = 60000;
    options.receiveTimeout = 60000;
    options.sendTimeout = 1800000;

    interceptors.add(InterceptorsWrapper(
      onRequest: requestInterceptor,
      onResponse: responseInterceptor,
      onError: errorInterceptor,
    ));
    if (kDebugMode) {
      interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));
    }
    return this;
  }

  dynamic requestInterceptor(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    var customHeaders = {
      "Content-Type": "application/json",
      "Accept": "application/json",
    };
    options.headers.addAll(customHeaders);
    handler.next(options);
    return options;
  }

  dynamic responseInterceptor(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    handler.next(response);
  }

  dynamic errorInterceptor(
    DioError dioError,
    ErrorInterceptorHandler handler,
  ) async {
    handler.next(dioError);
    return dioError;
  }
}
