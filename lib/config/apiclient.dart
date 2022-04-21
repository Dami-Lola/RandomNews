import 'package:dio/dio.dart';
import '../repository/api_client_response.dart';
import 'config.dart';

class ApiClient{
  Dio? dioMain;


  BaseOptions baseOptionsMain = BaseOptions(
    baseUrl: Config.baseUrl!,
    connectTimeout: 30000,
  );


  ApiClient() {
    dioMain = Dio(baseOptionsMain);
    dioMain!.interceptors.add(LogInterceptor(
        responseBody: true, requestBody: true, request: true, error: true));
  }


  ApiClientResponse _handleReError(DioError e) {
    if (e.response != null) {
      print('API client error [status] ==> ${e.response!.statusCode}');
      print('API client error [data] ==> ${e.response!.data}');
      //   // Handle Unauthorized error
      //   if (e.response?.statusCode == 401) {
      //     // TODO: find a way to notify the user and log the user out
      //   }
    }
    return ApiClientResponse(message: '${e.response?.data['message']}');
  }

  Future<dynamic> customGetWithQueryParams(String path, Map<String, dynamic> queryParams) async {
    try {
      var response = await dioMain!.get(path, queryParameters: queryParams);
      return response.data;
    } on DioError catch (e) {
      return Future.error(_handleReError(e));
    }
  }

}