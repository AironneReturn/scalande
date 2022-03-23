import 'dart:convert';

// import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class RestApiLogger {
  Duration _computeTime = Duration();
  Stopwatch? stopwatch;

  Request onRequestLogger(Request request) {
    stopwatch = Stopwatch()..start();

    if (request.files != null) {
      debugPrint(request.files?.fields.toString());
    } else {
      if (request.method == 'POST' ||
          request.method == 'PUT' ||
          request.method == 'PATCH') {
        var jsonData = json.encode(request.bodyBytes.bytesToString());
        debugPrint(jsonData);
      }
    }

    if (request.url.queryParameters != null &&
        request.url.queryParameters.isNotEmpty) {
      var _queryParameters = request.url.queryParameters;

      _queryParameters.map((key, value) {
        if (value is! String) {
          return MapEntry(key, value.toString());
        } else {
          return MapEntry(key, value);
        }
      });
    }

    debugPrint('REQUEST[${request.method}] => PATH: ${request.url.path}');
    return request;
  }

  Response onResponseLogger(Response response) {
    debugPrint(
        'RESPONSE[${response.statusCode}] => PATH: ${response.request?.url.path}');
    _computeTime = _computeTime + stopwatch!.elapsed;
    debugPrint(
        'COMPUTE TIME : ${stopwatch!.elapsed} - TOTAL : ${_computeTime.toString()}');
    _computeTime = Duration();
    return response;
  }

  Response onErrorLogger(Response response) {
    print(
        'ERROR[${response.statusCode}] => PATH: ${response.request?.url.path}');
    print(
        'ERROR[${response.statusCode}] => PATH: ${response.request?.bodyBytes.bytesToString()}');
    _computeTime = _computeTime + stopwatch!.elapsed;
    debugPrint('COMPUTE TIME : ${stopwatch!.elapsed}');
    _computeTime = Duration();
    return response;
  }

  // @override
  // Future onRequest(RequestOptions options) async {
  //   stopwatch = Stopwatch()..start();

  //   if (options.data is FormData) {
  //     debugPrint((options.data as FormData).fields.toString());
  //   } else {
  //     if (options.method == 'POST' ||
  //         options.method == 'PUT' ||
  //         options.method == 'PATCH') {
  //       var jsonData = json.encode(options.data);
  //       debugPrint(jsonData);
  //     }
  //   }
  //   debugPrint(
  //       'REQUEST[${options.method}] => PATH: ${options.baseUrl}${options.path} ${options.queryParameters}');
  //   return options;
  // }

  // @override
  // Future onResponse(Response response) async {
  //   print('request time : ${stopwatch.elapsed}');
  //   debugPrint(
  //       'RESPONSE[${response.statusCode}] => PATH: ${response.request.path}');
  //   _computeTime = _computeTime + stopwatch.elapsed;
  //   debugPrint(
  //       'COMPUTE TIME : ${stopwatch.elapsed} - TOTAL : ${_computeTime.toString()}');
  //   _computeTime = Duration();
  //   return response;
  // }

  // @override
  // Future onError(DioError err) async {
  //   print('ERROR[${err.response?.statusCode}] => PATH: ${err.request.path}');
  //   print('ERROR[${err.response?.statusCode}] => PATH: ${err.response?.data}');
  //   _computeTime = _computeTime + stopwatch.elapsed;
  //   debugPrint('COMPUTE TIME : ${stopwatch.elapsed}');
  //   _computeTime = Duration();
  //   return err;
  // }
}
