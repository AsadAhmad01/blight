import 'package:freezed_annotation/freezed_annotation.dart';

part 'hugging_face_response.freezed.dart';
part 'hugging_face_response.g.dart';

@freezed
class HuggingFaceResponse with _$HuggingFaceResponse {
  const factory HuggingFaceResponse({
    required String label,
    required double score,
  }) = _HuggingFaceResponse;

  factory HuggingFaceResponse.fromJson(Map<String, dynamic> json) =>
      _$HuggingFaceResponseFromJson(json);
}
