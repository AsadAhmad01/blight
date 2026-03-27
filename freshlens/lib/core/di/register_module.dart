import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @singleton
  Connectivity get connectivity => Connectivity();

  @singleton
  Dio get dio {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://api-inference.huggingface.co',
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );
    return dio;
  }
}
