import 'package:dio/dio.dart';
import 'package:flutter_task/core/utils/constants.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio();
  }
  Future<Response> getData(
      {required String endpoint, Map<String, dynamic>? queryParam}) {
    return dio.get(
      Constants.BaseUrl + endpoint,
      queryParameters: queryParam,
    );
  }

  Future<Response> postData(
      {required String endPoint,
      Map<String, dynamic>? body}) {
    return dio.post(
      Constants.BaseUrl + endPoint,
      data: body,
    );
  }
}
