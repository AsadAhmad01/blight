import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:flutter/foundation.dart';

@module
abstract class RegisterModule {
  @singleton
  Connectivity get connectivity => Connectivity();

  @singleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @singleton
  Dio dio(FlutterSecureStorage storage) {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://api-inference.huggingface.co',
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );
    
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final key = await storage.read(key: 'huggingface_api_key');
        if (key != null && key.isNotEmpty) {
          options.headers['Authorization'] = 'Bearer $key';
        }
        return handler.next(options);
      },
    ));

    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
      ));
    }
    return dio;
  }
}
