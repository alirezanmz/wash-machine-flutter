import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio) {
    _dio.options.baseUrl = 'https://sand-w-m-bxggekavf7e8asfd.uksouth-01.azurewebsites.net';
    _dio.interceptors.add(LogInterceptor(responseBody: true));
    // Add retry logic here if needed
  }

  Dio get dio => _dio;
}
