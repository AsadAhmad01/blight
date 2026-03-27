import 'dart:io';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../models/hugging_face_response.dart';

abstract class CloudClassifyService {
  Future<List<HuggingFaceResponse>> classify(File imageFile);
}

@LazySingleton(as: CloudClassifyService)
class CloudClassifyServiceImpl implements CloudClassifyService {
  final Dio _dio;
  
  CloudClassifyServiceImpl(this._dio);

  @override
  Future<List<HuggingFaceResponse>> classify(File imageFile) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(imageFile.path),
    });
    
    final response = await _dio.post(
      '/models/nateraw/food',
      data: formData,
    );
    
    if (response.data is List) {
      return (response.data as List)
          .map((e) => HuggingFaceResponse.fromJson(e as Map<String, dynamic>))
          .toList();
    }
    return [];
  }
}
