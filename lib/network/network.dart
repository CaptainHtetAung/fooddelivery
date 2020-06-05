import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:fooddelivery/network/logging_interceptor.dart';

abstract class NetworkProvider {
  Future<Response> doPost({@required String url, data,query});

  Future<Response> doPostWithOptions(
      {@required BaseOptions options, @required String url, data});
}

class NetworkProviderDioImpl implements NetworkProvider {
  static NetworkProviderDioImpl instance = NetworkProviderDioImpl._internal();
  static Dio _dio;
  static final  String userKey="1e3c349cc25d35cea4a89cf86995cd6b";


  NetworkProviderDioImpl._internal() {
    BaseOptions options = new BaseOptions(
        connectTimeout: 10000,
        receiveTimeout: 10000,
        headers: {
          "user-key":userKey,
        },
        baseUrl: "https://developers.zomato.com/api/v2.1"
    );

    _dio = new Dio(options);

    _dio.interceptors.add(LoggingInterceptor());
  }

  @override
  Future<Response> doPost({@required String url, data,query}) async {
    return await _dio.post(url, data: data,queryParameters: query);
  }

  @override
  Future<Response> doPostWithOptions(
      {BaseOptions options, String url, data}) async {
    // TODO: implement doPostWithOptions
    Dio dio = new Dio(options);
    return await dio.post(url, data: data);
  }
}
