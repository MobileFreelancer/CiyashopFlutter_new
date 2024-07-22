import 'dart:convert';
import 'dart:io';

import 'package:ciyashopflutter/utils/constant.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../utils/Apis.dart';
import 'api_status.dart';

enum ParamType {
  raw,
  formData,
}

class ApiServices {
  static final ApiServices instance = ApiServices._internal();

  factory ApiServices() {
    return instance;
  }

  ApiServices._internal();

  final dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 120),
      receiveTimeout: const Duration(seconds: 120),
      responseType: ResponseType.json,
    ),
  )..interceptors.add(
      PrettyDioLogger(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: false,
      ),
    );

  getAPICall({required String url, required Map<String, dynamic> param}) async {
    try {
      var response = await dio.get(
        url,
        queryParameters: param,
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader: 'Basic ${base64Encode(utf8.encode("${Apis.AP_USERNAME}:${Apis.AP_PASSWORD}"))}',
          },
        ),
      );
      return Success(code: response.statusCode, response: response);
    } on DioException catch (e) {
      if (e.response != null) {
        return Failure(code: e.response?.statusCode ?? 0, errorResponse: e.response?.statusMessage ?? "");
      } else {
        return Failure(code: 0, errorResponse: e.message);
      }
    }
  }

  postAPICall({required Map<String, dynamic> param, required String url, required ParamType paramType}) async {
    try {
      Response response = await dio.post(
        url,
        options: Options(
          responseType: ResponseType.json,
          headers: {
            HttpHeaders.authorizationHeader: 'Basic ${base64Encode(utf8.encode("${Apis.AP_USERNAME}:${Apis.AP_PASSWORD}"))}',
            HttpHeaders.contentTypeHeader:
                paramType == ParamType.raw ? "application/json" : "application/x-www-form-urlencoded",
          },
        ),
        data: paramType == ParamType.raw ? json.encode(param) : param,
      );
      return Success(code: response.statusCode, response: response);
    } on DioException catch (e) {
      if (e.response != null) {
        return Failure(code: e.response?.statusCode ?? 0, errorResponse: e.response ?? "");
      } else {
        return Failure(code: 0, errorResponse: e.message);
      }
    }
  }
}
