// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hugging_face_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HuggingFaceResponse _$HuggingFaceResponseFromJson(Map<String, dynamic> json) {
  return _HuggingFaceResponse.fromJson(json);
}

/// @nodoc
mixin _$HuggingFaceResponse {
  String get label => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;

  /// Serializes this HuggingFaceResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HuggingFaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HuggingFaceResponseCopyWith<HuggingFaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HuggingFaceResponseCopyWith<$Res> {
  factory $HuggingFaceResponseCopyWith(
          HuggingFaceResponse value, $Res Function(HuggingFaceResponse) then) =
      _$HuggingFaceResponseCopyWithImpl<$Res, HuggingFaceResponse>;
  @useResult
  $Res call({String label, double score});
}

/// @nodoc
class _$HuggingFaceResponseCopyWithImpl<$Res, $Val extends HuggingFaceResponse>
    implements $HuggingFaceResponseCopyWith<$Res> {
  _$HuggingFaceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HuggingFaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HuggingFaceResponseImplCopyWith<$Res>
    implements $HuggingFaceResponseCopyWith<$Res> {
  factory _$$HuggingFaceResponseImplCopyWith(_$HuggingFaceResponseImpl value,
          $Res Function(_$HuggingFaceResponseImpl) then) =
      __$$HuggingFaceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, double score});
}

/// @nodoc
class __$$HuggingFaceResponseImplCopyWithImpl<$Res>
    extends _$HuggingFaceResponseCopyWithImpl<$Res, _$HuggingFaceResponseImpl>
    implements _$$HuggingFaceResponseImplCopyWith<$Res> {
  __$$HuggingFaceResponseImplCopyWithImpl(_$HuggingFaceResponseImpl _value,
      $Res Function(_$HuggingFaceResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HuggingFaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? score = null,
  }) {
    return _then(_$HuggingFaceResponseImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HuggingFaceResponseImpl implements _HuggingFaceResponse {
  const _$HuggingFaceResponseImpl({required this.label, required this.score});

  factory _$HuggingFaceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HuggingFaceResponseImplFromJson(json);

  @override
  final String label;
  @override
  final double score;

  @override
  String toString() {
    return 'HuggingFaceResponse(label: $label, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HuggingFaceResponseImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, score);

  /// Create a copy of HuggingFaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HuggingFaceResponseImplCopyWith<_$HuggingFaceResponseImpl> get copyWith =>
      __$$HuggingFaceResponseImplCopyWithImpl<_$HuggingFaceResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HuggingFaceResponseImplToJson(
      this,
    );
  }
}

abstract class _HuggingFaceResponse implements HuggingFaceResponse {
  const factory _HuggingFaceResponse(
      {required final String label,
      required final double score}) = _$HuggingFaceResponseImpl;

  factory _HuggingFaceResponse.fromJson(Map<String, dynamic> json) =
      _$HuggingFaceResponseImpl.fromJson;

  @override
  String get label;
  @override
  double get score;

  /// Create a copy of HuggingFaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HuggingFaceResponseImplCopyWith<_$HuggingFaceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
