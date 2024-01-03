import 'package:dio/dio.dart';
import 'package:task2/common/global_variable.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiUrl.baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> fetchdata({
    required String url,
    Map<String, dynamic>? query,
    //String lang = 'en',
    String? token,
  }) async {
    dio!.options.headers = {
      'Authorization': token ?? '',
      'Content-Type': 'application/json',
    };
    var result = dio!.get(
      url,
      queryParameters: query,
    );
    return result;
  }

  static Future<Response> deletedata({
    required String url,
    Map<String, dynamic>? query,
    String lang = 'en',
    String? token,
  }) async {
    dio!.options.headers = {
      'Authorization': token ?? '',
      'Content-Type': 'application/json',
    };
    return dio!.delete(url, queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    required Object data,
    Map<String, dynamic>? query,
    bool t = true,
    String? token,
    String? socketId,
  }) async {
    dio!.options.headers = {
      'Authorization': token ?? '',
      'Content-Type': 'application/json',
    };

    return dio!.post(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
