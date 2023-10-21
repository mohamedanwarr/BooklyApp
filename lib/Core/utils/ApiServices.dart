import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio;

  ApiServices(this._dio);

  final baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var respnse = await _dio.get('$baseUrl$endpoint');
    return respnse.data;
  }
}
