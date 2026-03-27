// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classify_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClassifyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) imageSelected,
    required TResult Function(String imagePath) classifyRequested,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? imageSelected,
    TResult? Function(String imagePath)? classifyRequested,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? imageSelected,
    TResult Function(String imagePath)? classifyRequested,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageSelected value) imageSelected,
    required TResult Function(ClassifyRequested value) classifyRequested,
    required TResult Function(Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageSelected value)? imageSelected,
    TResult? Function(ClassifyRequested value)? classifyRequested,
    TResult? Function(Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageSelected value)? imageSelected,
    TResult Function(ClassifyRequested value)? classifyRequested,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassifyEventCopyWith<$Res> {
  factory $ClassifyEventCopyWith(
          ClassifyEvent value, $Res Function(ClassifyEvent) then) =
      _$ClassifyEventCopyWithImpl<$Res, ClassifyEvent>;
}

/// @nodoc
class _$ClassifyEventCopyWithImpl<$Res, $Val extends ClassifyEvent>
    implements $ClassifyEventCopyWith<$Res> {
  _$ClassifyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassifyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ImageSelectedImplCopyWith<$Res> {
  factory _$$ImageSelectedImplCopyWith(
          _$ImageSelectedImpl value, $Res Function(_$ImageSelectedImpl) then) =
      __$$ImageSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$ImageSelectedImplCopyWithImpl<$Res>
    extends _$ClassifyEventCopyWithImpl<$Res, _$ImageSelectedImpl>
    implements _$$ImageSelectedImplCopyWith<$Res> {
  __$$ImageSelectedImplCopyWithImpl(
      _$ImageSelectedImpl _value, $Res Function(_$ImageSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassifyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_$ImageSelectedImpl(
      null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageSelectedImpl implements ImageSelected {
  const _$ImageSelectedImpl(this.imagePath);

  @override
  final String imagePath;

  @override
  String toString() {
    return 'ClassifyEvent.imageSelected(imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSelectedImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  /// Create a copy of ClassifyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSelectedImplCopyWith<_$ImageSelectedImpl> get copyWith =>
      __$$ImageSelectedImplCopyWithImpl<_$ImageSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) imageSelected,
    required TResult Function(String imagePath) classifyRequested,
    required TResult Function() reset,
  }) {
    return imageSelected(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? imageSelected,
    TResult? Function(String imagePath)? classifyRequested,
    TResult? Function()? reset,
  }) {
    return imageSelected?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? imageSelected,
    TResult Function(String imagePath)? classifyRequested,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (imageSelected != null) {
      return imageSelected(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageSelected value) imageSelected,
    required TResult Function(ClassifyRequested value) classifyRequested,
    required TResult Function(Reset value) reset,
  }) {
    return imageSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageSelected value)? imageSelected,
    TResult? Function(ClassifyRequested value)? classifyRequested,
    TResult? Function(Reset value)? reset,
  }) {
    return imageSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageSelected value)? imageSelected,
    TResult Function(ClassifyRequested value)? classifyRequested,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (imageSelected != null) {
      return imageSelected(this);
    }
    return orElse();
  }
}

abstract class ImageSelected implements ClassifyEvent {
  const factory ImageSelected(final String imagePath) = _$ImageSelectedImpl;

  String get imagePath;

  /// Create a copy of ClassifyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageSelectedImplCopyWith<_$ImageSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClassifyRequestedImplCopyWith<$Res> {
  factory _$$ClassifyRequestedImplCopyWith(_$ClassifyRequestedImpl value,
          $Res Function(_$ClassifyRequestedImpl) then) =
      __$$ClassifyRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$ClassifyRequestedImplCopyWithImpl<$Res>
    extends _$ClassifyEventCopyWithImpl<$Res, _$ClassifyRequestedImpl>
    implements _$$ClassifyRequestedImplCopyWith<$Res> {
  __$$ClassifyRequestedImplCopyWithImpl(_$ClassifyRequestedImpl _value,
      $Res Function(_$ClassifyRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassifyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_$ClassifyRequestedImpl(
      null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClassifyRequestedImpl implements ClassifyRequested {
  const _$ClassifyRequestedImpl(this.imagePath);

  @override
  final String imagePath;

  @override
  String toString() {
    return 'ClassifyEvent.classifyRequested(imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassifyRequestedImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  /// Create a copy of ClassifyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassifyRequestedImplCopyWith<_$ClassifyRequestedImpl> get copyWith =>
      __$$ClassifyRequestedImplCopyWithImpl<_$ClassifyRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) imageSelected,
    required TResult Function(String imagePath) classifyRequested,
    required TResult Function() reset,
  }) {
    return classifyRequested(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? imageSelected,
    TResult? Function(String imagePath)? classifyRequested,
    TResult? Function()? reset,
  }) {
    return classifyRequested?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? imageSelected,
    TResult Function(String imagePath)? classifyRequested,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (classifyRequested != null) {
      return classifyRequested(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageSelected value) imageSelected,
    required TResult Function(ClassifyRequested value) classifyRequested,
    required TResult Function(Reset value) reset,
  }) {
    return classifyRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageSelected value)? imageSelected,
    TResult? Function(ClassifyRequested value)? classifyRequested,
    TResult? Function(Reset value)? reset,
  }) {
    return classifyRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageSelected value)? imageSelected,
    TResult Function(ClassifyRequested value)? classifyRequested,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (classifyRequested != null) {
      return classifyRequested(this);
    }
    return orElse();
  }
}

abstract class ClassifyRequested implements ClassifyEvent {
  const factory ClassifyRequested(final String imagePath) =
      _$ClassifyRequestedImpl;

  String get imagePath;

  /// Create a copy of ClassifyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassifyRequestedImplCopyWith<_$ClassifyRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$ClassifyEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassifyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetImpl implements Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'ClassifyEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) imageSelected,
    required TResult Function(String imagePath) classifyRequested,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? imageSelected,
    TResult? Function(String imagePath)? classifyRequested,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? imageSelected,
    TResult Function(String imagePath)? classifyRequested,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageSelected value) imageSelected,
    required TResult Function(ClassifyRequested value) classifyRequested,
    required TResult Function(Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageSelected value)? imageSelected,
    TResult? Function(ClassifyRequested value)? classifyRequested,
    TResult? Function(Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageSelected value)? imageSelected,
    TResult Function(ClassifyRequested value)? classifyRequested,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class Reset implements ClassifyEvent {
  const factory Reset() = _$ResetImpl;
}

/// @nodoc
mixin _$ClassifyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String imagePath) imageLoaded,
    required TResult Function() loading,
    required TResult Function(FreshnessResult result) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String imagePath)? imageLoaded,
    TResult? Function()? loading,
    TResult? Function(FreshnessResult result)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String imagePath)? imageLoaded,
    TResult Function()? loading,
    TResult Function(FreshnessResult result)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClassifyIdle value) idle,
    required TResult Function(ClassifyImageLoaded value) imageLoaded,
    required TResult Function(ClassifyLoading value) loading,
    required TResult Function(ClassifySuccess value) success,
    required TResult Function(ClassifyFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClassifyIdle value)? idle,
    TResult? Function(ClassifyImageLoaded value)? imageLoaded,
    TResult? Function(ClassifyLoading value)? loading,
    TResult? Function(ClassifySuccess value)? success,
    TResult? Function(ClassifyFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClassifyIdle value)? idle,
    TResult Function(ClassifyImageLoaded value)? imageLoaded,
    TResult Function(ClassifyLoading value)? loading,
    TResult Function(ClassifySuccess value)? success,
    TResult Function(ClassifyFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassifyStateCopyWith<$Res> {
  factory $ClassifyStateCopyWith(
          ClassifyState value, $Res Function(ClassifyState) then) =
      _$ClassifyStateCopyWithImpl<$Res, ClassifyState>;
}

/// @nodoc
class _$ClassifyStateCopyWithImpl<$Res, $Val extends ClassifyState>
    implements $ClassifyStateCopyWith<$Res> {
  _$ClassifyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassifyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClassifyIdleImplCopyWith<$Res> {
  factory _$$ClassifyIdleImplCopyWith(
          _$ClassifyIdleImpl value, $Res Function(_$ClassifyIdleImpl) then) =
      __$$ClassifyIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClassifyIdleImplCopyWithImpl<$Res>
    extends _$ClassifyStateCopyWithImpl<$Res, _$ClassifyIdleImpl>
    implements _$$ClassifyIdleImplCopyWith<$Res> {
  __$$ClassifyIdleImplCopyWithImpl(
      _$ClassifyIdleImpl _value, $Res Function(_$ClassifyIdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassifyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClassifyIdleImpl implements ClassifyIdle {
  const _$ClassifyIdleImpl();

  @override
  String toString() {
    return 'ClassifyState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClassifyIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String imagePath) imageLoaded,
    required TResult Function() loading,
    required TResult Function(FreshnessResult result) success,
    required TResult Function(String message) failure,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String imagePath)? imageLoaded,
    TResult? Function()? loading,
    TResult? Function(FreshnessResult result)? success,
    TResult? Function(String message)? failure,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String imagePath)? imageLoaded,
    TResult Function()? loading,
    TResult Function(FreshnessResult result)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClassifyIdle value) idle,
    required TResult Function(ClassifyImageLoaded value) imageLoaded,
    required TResult Function(ClassifyLoading value) loading,
    required TResult Function(ClassifySuccess value) success,
    required TResult Function(ClassifyFailure value) failure,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClassifyIdle value)? idle,
    TResult? Function(ClassifyImageLoaded value)? imageLoaded,
    TResult? Function(ClassifyLoading value)? loading,
    TResult? Function(ClassifySuccess value)? success,
    TResult? Function(ClassifyFailure value)? failure,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClassifyIdle value)? idle,
    TResult Function(ClassifyImageLoaded value)? imageLoaded,
    TResult Function(ClassifyLoading value)? loading,
    TResult Function(ClassifySuccess value)? success,
    TResult Function(ClassifyFailure value)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class ClassifyIdle implements ClassifyState {
  const factory ClassifyIdle() = _$ClassifyIdleImpl;
}

/// @nodoc
abstract class _$$ClassifyImageLoadedImplCopyWith<$Res> {
  factory _$$ClassifyImageLoadedImplCopyWith(_$ClassifyImageLoadedImpl value,
          $Res Function(_$ClassifyImageLoadedImpl) then) =
      __$$ClassifyImageLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$ClassifyImageLoadedImplCopyWithImpl<$Res>
    extends _$ClassifyStateCopyWithImpl<$Res, _$ClassifyImageLoadedImpl>
    implements _$$ClassifyImageLoadedImplCopyWith<$Res> {
  __$$ClassifyImageLoadedImplCopyWithImpl(_$ClassifyImageLoadedImpl _value,
      $Res Function(_$ClassifyImageLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassifyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_$ClassifyImageLoadedImpl(
      null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClassifyImageLoadedImpl implements ClassifyImageLoaded {
  const _$ClassifyImageLoadedImpl(this.imagePath);

  @override
  final String imagePath;

  @override
  String toString() {
    return 'ClassifyState.imageLoaded(imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassifyImageLoadedImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  /// Create a copy of ClassifyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassifyImageLoadedImplCopyWith<_$ClassifyImageLoadedImpl> get copyWith =>
      __$$ClassifyImageLoadedImplCopyWithImpl<_$ClassifyImageLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String imagePath) imageLoaded,
    required TResult Function() loading,
    required TResult Function(FreshnessResult result) success,
    required TResult Function(String message) failure,
  }) {
    return imageLoaded(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String imagePath)? imageLoaded,
    TResult? Function()? loading,
    TResult? Function(FreshnessResult result)? success,
    TResult? Function(String message)? failure,
  }) {
    return imageLoaded?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String imagePath)? imageLoaded,
    TResult Function()? loading,
    TResult Function(FreshnessResult result)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (imageLoaded != null) {
      return imageLoaded(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClassifyIdle value) idle,
    required TResult Function(ClassifyImageLoaded value) imageLoaded,
    required TResult Function(ClassifyLoading value) loading,
    required TResult Function(ClassifySuccess value) success,
    required TResult Function(ClassifyFailure value) failure,
  }) {
    return imageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClassifyIdle value)? idle,
    TResult? Function(ClassifyImageLoaded value)? imageLoaded,
    TResult? Function(ClassifyLoading value)? loading,
    TResult? Function(ClassifySuccess value)? success,
    TResult? Function(ClassifyFailure value)? failure,
  }) {
    return imageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClassifyIdle value)? idle,
    TResult Function(ClassifyImageLoaded value)? imageLoaded,
    TResult Function(ClassifyLoading value)? loading,
    TResult Function(ClassifySuccess value)? success,
    TResult Function(ClassifyFailure value)? failure,
    required TResult orElse(),
  }) {
    if (imageLoaded != null) {
      return imageLoaded(this);
    }
    return orElse();
  }
}

abstract class ClassifyImageLoaded implements ClassifyState {
  const factory ClassifyImageLoaded(final String imagePath) =
      _$ClassifyImageLoadedImpl;

  String get imagePath;

  /// Create a copy of ClassifyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassifyImageLoadedImplCopyWith<_$ClassifyImageLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClassifyLoadingImplCopyWith<$Res> {
  factory _$$ClassifyLoadingImplCopyWith(_$ClassifyLoadingImpl value,
          $Res Function(_$ClassifyLoadingImpl) then) =
      __$$ClassifyLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClassifyLoadingImplCopyWithImpl<$Res>
    extends _$ClassifyStateCopyWithImpl<$Res, _$ClassifyLoadingImpl>
    implements _$$ClassifyLoadingImplCopyWith<$Res> {
  __$$ClassifyLoadingImplCopyWithImpl(
      _$ClassifyLoadingImpl _value, $Res Function(_$ClassifyLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassifyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClassifyLoadingImpl implements ClassifyLoading {
  const _$ClassifyLoadingImpl();

  @override
  String toString() {
    return 'ClassifyState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClassifyLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String imagePath) imageLoaded,
    required TResult Function() loading,
    required TResult Function(FreshnessResult result) success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String imagePath)? imageLoaded,
    TResult? Function()? loading,
    TResult? Function(FreshnessResult result)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String imagePath)? imageLoaded,
    TResult Function()? loading,
    TResult Function(FreshnessResult result)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClassifyIdle value) idle,
    required TResult Function(ClassifyImageLoaded value) imageLoaded,
    required TResult Function(ClassifyLoading value) loading,
    required TResult Function(ClassifySuccess value) success,
    required TResult Function(ClassifyFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClassifyIdle value)? idle,
    TResult? Function(ClassifyImageLoaded value)? imageLoaded,
    TResult? Function(ClassifyLoading value)? loading,
    TResult? Function(ClassifySuccess value)? success,
    TResult? Function(ClassifyFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClassifyIdle value)? idle,
    TResult Function(ClassifyImageLoaded value)? imageLoaded,
    TResult Function(ClassifyLoading value)? loading,
    TResult Function(ClassifySuccess value)? success,
    TResult Function(ClassifyFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ClassifyLoading implements ClassifyState {
  const factory ClassifyLoading() = _$ClassifyLoadingImpl;
}

/// @nodoc
abstract class _$$ClassifySuccessImplCopyWith<$Res> {
  factory _$$ClassifySuccessImplCopyWith(_$ClassifySuccessImpl value,
          $Res Function(_$ClassifySuccessImpl) then) =
      __$$ClassifySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FreshnessResult result});
}

/// @nodoc
class __$$ClassifySuccessImplCopyWithImpl<$Res>
    extends _$ClassifyStateCopyWithImpl<$Res, _$ClassifySuccessImpl>
    implements _$$ClassifySuccessImplCopyWith<$Res> {
  __$$ClassifySuccessImplCopyWithImpl(
      _$ClassifySuccessImpl _value, $Res Function(_$ClassifySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassifyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$ClassifySuccessImpl(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as FreshnessResult,
    ));
  }
}

/// @nodoc

class _$ClassifySuccessImpl implements ClassifySuccess {
  const _$ClassifySuccessImpl(this.result);

  @override
  final FreshnessResult result;

  @override
  String toString() {
    return 'ClassifyState.success(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassifySuccessImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of ClassifyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassifySuccessImplCopyWith<_$ClassifySuccessImpl> get copyWith =>
      __$$ClassifySuccessImplCopyWithImpl<_$ClassifySuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String imagePath) imageLoaded,
    required TResult Function() loading,
    required TResult Function(FreshnessResult result) success,
    required TResult Function(String message) failure,
  }) {
    return success(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String imagePath)? imageLoaded,
    TResult? Function()? loading,
    TResult? Function(FreshnessResult result)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String imagePath)? imageLoaded,
    TResult Function()? loading,
    TResult Function(FreshnessResult result)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClassifyIdle value) idle,
    required TResult Function(ClassifyImageLoaded value) imageLoaded,
    required TResult Function(ClassifyLoading value) loading,
    required TResult Function(ClassifySuccess value) success,
    required TResult Function(ClassifyFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClassifyIdle value)? idle,
    TResult? Function(ClassifyImageLoaded value)? imageLoaded,
    TResult? Function(ClassifyLoading value)? loading,
    TResult? Function(ClassifySuccess value)? success,
    TResult? Function(ClassifyFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClassifyIdle value)? idle,
    TResult Function(ClassifyImageLoaded value)? imageLoaded,
    TResult Function(ClassifyLoading value)? loading,
    TResult Function(ClassifySuccess value)? success,
    TResult Function(ClassifyFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ClassifySuccess implements ClassifyState {
  const factory ClassifySuccess(final FreshnessResult result) =
      _$ClassifySuccessImpl;

  FreshnessResult get result;

  /// Create a copy of ClassifyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassifySuccessImplCopyWith<_$ClassifySuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClassifyFailureImplCopyWith<$Res> {
  factory _$$ClassifyFailureImplCopyWith(_$ClassifyFailureImpl value,
          $Res Function(_$ClassifyFailureImpl) then) =
      __$$ClassifyFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ClassifyFailureImplCopyWithImpl<$Res>
    extends _$ClassifyStateCopyWithImpl<$Res, _$ClassifyFailureImpl>
    implements _$$ClassifyFailureImplCopyWith<$Res> {
  __$$ClassifyFailureImplCopyWithImpl(
      _$ClassifyFailureImpl _value, $Res Function(_$ClassifyFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassifyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ClassifyFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClassifyFailureImpl implements ClassifyFailure {
  const _$ClassifyFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ClassifyState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassifyFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ClassifyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassifyFailureImplCopyWith<_$ClassifyFailureImpl> get copyWith =>
      __$$ClassifyFailureImplCopyWithImpl<_$ClassifyFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String imagePath) imageLoaded,
    required TResult Function() loading,
    required TResult Function(FreshnessResult result) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String imagePath)? imageLoaded,
    TResult? Function()? loading,
    TResult? Function(FreshnessResult result)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String imagePath)? imageLoaded,
    TResult Function()? loading,
    TResult Function(FreshnessResult result)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClassifyIdle value) idle,
    required TResult Function(ClassifyImageLoaded value) imageLoaded,
    required TResult Function(ClassifyLoading value) loading,
    required TResult Function(ClassifySuccess value) success,
    required TResult Function(ClassifyFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClassifyIdle value)? idle,
    TResult? Function(ClassifyImageLoaded value)? imageLoaded,
    TResult? Function(ClassifyLoading value)? loading,
    TResult? Function(ClassifySuccess value)? success,
    TResult? Function(ClassifyFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClassifyIdle value)? idle,
    TResult Function(ClassifyImageLoaded value)? imageLoaded,
    TResult Function(ClassifyLoading value)? loading,
    TResult Function(ClassifySuccess value)? success,
    TResult Function(ClassifyFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ClassifyFailure implements ClassifyState {
  const factory ClassifyFailure(final String message) = _$ClassifyFailureImpl;

  String get message;

  /// Create a copy of ClassifyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassifyFailureImplCopyWith<_$ClassifyFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
