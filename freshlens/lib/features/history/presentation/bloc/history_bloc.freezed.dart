// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ScanRecord> scans) scansUpdated,
    required TResult Function(int id) deleteScan,
    required TResult Function(
            String imagePath,
            String verdict,
            double freshScore,
            double okayScore,
            double avoidScore,
            String foodCategory,
            DateTime createdAt)
        addScan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ScanRecord> scans)? scansUpdated,
    TResult? Function(int id)? deleteScan,
    TResult? Function(
            String imagePath,
            String verdict,
            double freshScore,
            double okayScore,
            double avoidScore,
            String foodCategory,
            DateTime createdAt)?
        addScan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ScanRecord> scans)? scansUpdated,
    TResult Function(int id)? deleteScan,
    TResult Function(
            String imagePath,
            String verdict,
            double freshScore,
            double okayScore,
            double avoidScore,
            String foodCategory,
            DateTime createdAt)?
        addScan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ScansUpdated value) scansUpdated,
    required TResult Function(DeleteScan value) deleteScan,
    required TResult Function(AddScan value) addScan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ScansUpdated value)? scansUpdated,
    TResult? Function(DeleteScan value)? deleteScan,
    TResult? Function(AddScan value)? addScan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ScansUpdated value)? scansUpdated,
    TResult Function(DeleteScan value)? deleteScan,
    TResult Function(AddScan value)? addScan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res, HistoryEvent>;
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res, $Val extends HistoryEvent>
    implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HistoryEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ScanRecord> scans) scansUpdated,
    required TResult Function(int id) deleteScan,
    required TResult Function(
            String imagePath,
            String verdict,
            double freshScore,
            double okayScore,
            double avoidScore,
            String foodCategory,
            DateTime createdAt)
        addScan,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ScanRecord> scans)? scansUpdated,
    TResult? Function(int id)? deleteScan,
    TResult? Function(
            String imagePath,
            String verdict,
            double freshScore,
            double okayScore,
            double avoidScore,
            String foodCategory,
            DateTime createdAt)?
        addScan,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ScanRecord> scans)? scansUpdated,
    TResult Function(int id)? deleteScan,
    TResult Function(
            String imagePath,
            String verdict,
            double freshScore,
            double okayScore,
            double avoidScore,
            String foodCategory,
            DateTime createdAt)?
        addScan,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ScansUpdated value) scansUpdated,
    required TResult Function(DeleteScan value) deleteScan,
    required TResult Function(AddScan value) addScan,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ScansUpdated value)? scansUpdated,
    TResult? Function(DeleteScan value)? deleteScan,
    TResult? Function(AddScan value)? addScan,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ScansUpdated value)? scansUpdated,
    TResult Function(DeleteScan value)? deleteScan,
    TResult Function(AddScan value)? addScan,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements HistoryEvent {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ScansUpdatedImplCopyWith<$Res> {
  factory _$$ScansUpdatedImplCopyWith(
          _$ScansUpdatedImpl value, $Res Function(_$ScansUpdatedImpl) then) =
      __$$ScansUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ScanRecord> scans});
}

/// @nodoc
class __$$ScansUpdatedImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$ScansUpdatedImpl>
    implements _$$ScansUpdatedImplCopyWith<$Res> {
  __$$ScansUpdatedImplCopyWithImpl(
      _$ScansUpdatedImpl _value, $Res Function(_$ScansUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scans = null,
  }) {
    return _then(_$ScansUpdatedImpl(
      null == scans
          ? _value._scans
          : scans // ignore: cast_nullable_to_non_nullable
              as List<ScanRecord>,
    ));
  }
}

/// @nodoc

class _$ScansUpdatedImpl implements ScansUpdated {
  const _$ScansUpdatedImpl(final List<ScanRecord> scans) : _scans = scans;

  final List<ScanRecord> _scans;
  @override
  List<ScanRecord> get scans {
    if (_scans is EqualUnmodifiableListView) return _scans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scans);
  }

  @override
  String toString() {
    return 'HistoryEvent.scansUpdated(scans: $scans)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScansUpdatedImpl &&
            const DeepCollectionEquality().equals(other._scans, _scans));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_scans));

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScansUpdatedImplCopyWith<_$ScansUpdatedImpl> get copyWith =>
      __$$ScansUpdatedImplCopyWithImpl<_$ScansUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ScanRecord> scans) scansUpdated,
    required TResult Function(int id) deleteScan,
    required TResult Function(
            String imagePath,
            String verdict,
            double freshScore,
            double okayScore,
            double avoidScore,
            String foodCategory,
            DateTime createdAt)
        addScan,
  }) {
    return scansUpdated(scans);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ScanRecord> scans)? scansUpdated,
    TResult? Function(int id)? deleteScan,
    TResult? Function(
            String imagePath,
            String verdict,
            double freshScore,
            double okayScore,
            double avoidScore,
            String foodCategory,
            DateTime createdAt)?
        addScan,
  }) {
    return scansUpdated?.call(scans);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ScanRecord> scans)? scansUpdated,
    TResult Function(int id)? deleteScan,
    TResult Function(
            String imagePath,
            String verdict,
            double freshScore,
            double okayScore,
            double avoidScore,
            String foodCategory,
            DateTime createdAt)?
        addScan,
    required TResult orElse(),
  }) {
    if (scansUpdated != null) {
      return scansUpdated(scans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ScansUpdated value) scansUpdated,
    required TResult Function(DeleteScan value) deleteScan,
    required TResult Function(AddScan value) addScan,
  }) {
    return scansUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ScansUpdated value)? scansUpdated,
    TResult? Function(DeleteScan value)? deleteScan,
    TResult? Function(AddScan value)? addScan,
  }) {
    return scansUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ScansUpdated value)? scansUpdated,
    TResult Function(DeleteScan value)? deleteScan,
    TResult Function(AddScan value)? addScan,
    required TResult orElse(),
  }) {
    if (scansUpdated != null) {
      return scansUpdated(this);
    }
    return orElse();
  }
}

abstract class ScansUpdated implements HistoryEvent {
  const factory ScansUpdated(final List<ScanRecord> scans) = _$ScansUpdatedImpl;

  List<ScanRecord> get scans;

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScansUpdatedImplCopyWith<_$ScansUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteScanImplCopyWith<$Res> {
  factory _$$DeleteScanImplCopyWith(
          _$DeleteScanImpl value, $Res Function(_$DeleteScanImpl) then) =
      __$$DeleteScanImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteScanImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$DeleteScanImpl>
    implements _$$DeleteScanImplCopyWith<$Res> {
  __$$DeleteScanImplCopyWithImpl(
      _$DeleteScanImpl _value, $Res Function(_$DeleteScanImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteScanImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteScanImpl implements DeleteScan {
  const _$DeleteScanImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'HistoryEvent.deleteScan(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteScanImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteScanImplCopyWith<_$DeleteScanImpl> get copyWith =>
      __$$DeleteScanImplCopyWithImpl<_$DeleteScanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ScanRecord> scans) scansUpdated,
    required TResult Function(int id) deleteScan,
    required TResult Function(
            String imagePath,
            String verdict,
            double freshScore,
            double okayScore,
            double avoidScore,
            String foodCategory,
            DateTime createdAt)
        addScan,
  }) {
    return deleteScan(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ScanRecord> scans)? scansUpdated,
    TResult? Function(int id)? deleteScan,
    TResult? Function(
            String imagePath,
            String verdict,
            double freshScore,
            double okayScore,
            double avoidScore,
            String foodCategory,
            DateTime createdAt)?
        addScan,
  }) {
    return deleteScan?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ScanRecord> scans)? scansUpdated,
    TResult Function(int id)? deleteScan,
    TResult Function(
            String imagePath,
            String verdict,
            double freshScore,
            double okayScore,
            double avoidScore,
            String foodCategory,
            DateTime createdAt)?
        addScan,
    required TResult orElse(),
  }) {
    if (deleteScan != null) {
      return deleteScan(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ScansUpdated value) scansUpdated,
    required TResult Function(DeleteScan value) deleteScan,
    required TResult Function(AddScan value) addScan,
  }) {
    return deleteScan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ScansUpdated value)? scansUpdated,
    TResult? Function(DeleteScan value)? deleteScan,
    TResult? Function(AddScan value)? addScan,
  }) {
    return deleteScan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ScansUpdated value)? scansUpdated,
    TResult Function(DeleteScan value)? deleteScan,
    TResult Function(AddScan value)? addScan,
    required TResult orElse(),
  }) {
    if (deleteScan != null) {
      return deleteScan(this);
    }
    return orElse();
  }
}

abstract class DeleteScan implements HistoryEvent {
  const factory DeleteScan(final int id) = _$DeleteScanImpl;

  int get id;

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteScanImplCopyWith<_$DeleteScanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddScanImplCopyWith<$Res> {
  factory _$$AddScanImplCopyWith(
          _$AddScanImpl value, $Res Function(_$AddScanImpl) then) =
      __$$AddScanImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String imagePath,
      String verdict,
      double freshScore,
      double okayScore,
      double avoidScore,
      String foodCategory,
      DateTime createdAt});
}

/// @nodoc
class __$$AddScanImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$AddScanImpl>
    implements _$$AddScanImplCopyWith<$Res> {
  __$$AddScanImplCopyWithImpl(
      _$AddScanImpl _value, $Res Function(_$AddScanImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? verdict = null,
    Object? freshScore = null,
    Object? okayScore = null,
    Object? avoidScore = null,
    Object? foodCategory = null,
    Object? createdAt = null,
  }) {
    return _then(_$AddScanImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      verdict: null == verdict
          ? _value.verdict
          : verdict // ignore: cast_nullable_to_non_nullable
              as String,
      freshScore: null == freshScore
          ? _value.freshScore
          : freshScore // ignore: cast_nullable_to_non_nullable
              as double,
      okayScore: null == okayScore
          ? _value.okayScore
          : okayScore // ignore: cast_nullable_to_non_nullable
              as double,
      avoidScore: null == avoidScore
          ? _value.avoidScore
          : avoidScore // ignore: cast_nullable_to_non_nullable
              as double,
      foodCategory: null == foodCategory
          ? _value.foodCategory
          : foodCategory // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$AddScanImpl implements AddScan {
  const _$AddScanImpl(
      {required this.imagePath,
      required this.verdict,
      required this.freshScore,
      required this.okayScore,
      required this.avoidScore,
      required this.foodCategory,
      required this.createdAt});

  @override
  final String imagePath;
  @override
  final String verdict;
  @override
  final double freshScore;
  @override
  final double okayScore;
  @override
  final double avoidScore;
  @override
  final String foodCategory;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'HistoryEvent.addScan(imagePath: $imagePath, verdict: $verdict, freshScore: $freshScore, okayScore: $okayScore, avoidScore: $avoidScore, foodCategory: $foodCategory, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddScanImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.verdict, verdict) || other.verdict == verdict) &&
            (identical(other.freshScore, freshScore) ||
                other.freshScore == freshScore) &&
            (identical(other.okayScore, okayScore) ||
                other.okayScore == okayScore) &&
            (identical(other.avoidScore, avoidScore) ||
                other.avoidScore == avoidScore) &&
            (identical(other.foodCategory, foodCategory) ||
                other.foodCategory == foodCategory) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath, verdict, freshScore,
      okayScore, avoidScore, foodCategory, createdAt);

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddScanImplCopyWith<_$AddScanImpl> get copyWith =>
      __$$AddScanImplCopyWithImpl<_$AddScanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ScanRecord> scans) scansUpdated,
    required TResult Function(int id) deleteScan,
    required TResult Function(
            String imagePath,
            String verdict,
            double freshScore,
            double okayScore,
            double avoidScore,
            String foodCategory,
            DateTime createdAt)
        addScan,
  }) {
    return addScan(imagePath, verdict, freshScore, okayScore, avoidScore,
        foodCategory, createdAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ScanRecord> scans)? scansUpdated,
    TResult? Function(int id)? deleteScan,
    TResult? Function(
            String imagePath,
            String verdict,
            double freshScore,
            double okayScore,
            double avoidScore,
            String foodCategory,
            DateTime createdAt)?
        addScan,
  }) {
    return addScan?.call(imagePath, verdict, freshScore, okayScore, avoidScore,
        foodCategory, createdAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ScanRecord> scans)? scansUpdated,
    TResult Function(int id)? deleteScan,
    TResult Function(
            String imagePath,
            String verdict,
            double freshScore,
            double okayScore,
            double avoidScore,
            String foodCategory,
            DateTime createdAt)?
        addScan,
    required TResult orElse(),
  }) {
    if (addScan != null) {
      return addScan(imagePath, verdict, freshScore, okayScore, avoidScore,
          foodCategory, createdAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ScansUpdated value) scansUpdated,
    required TResult Function(DeleteScan value) deleteScan,
    required TResult Function(AddScan value) addScan,
  }) {
    return addScan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ScansUpdated value)? scansUpdated,
    TResult? Function(DeleteScan value)? deleteScan,
    TResult? Function(AddScan value)? addScan,
  }) {
    return addScan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ScansUpdated value)? scansUpdated,
    TResult Function(DeleteScan value)? deleteScan,
    TResult Function(AddScan value)? addScan,
    required TResult orElse(),
  }) {
    if (addScan != null) {
      return addScan(this);
    }
    return orElse();
  }
}

abstract class AddScan implements HistoryEvent {
  const factory AddScan(
      {required final String imagePath,
      required final String verdict,
      required final double freshScore,
      required final double okayScore,
      required final double avoidScore,
      required final String foodCategory,
      required final DateTime createdAt}) = _$AddScanImpl;

  String get imagePath;
  String get verdict;
  double get freshScore;
  double get okayScore;
  double get avoidScore;
  String get foodCategory;
  DateTime get createdAt;

  /// Create a copy of HistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddScanImplCopyWith<_$AddScanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ScanRecord> scans) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ScanRecord> scans)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ScanRecord> scans)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryLoading value) loading,
    required TResult Function(HistoryLoaded value) loaded,
    required TResult Function(HistoryError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryLoading value)? loading,
    TResult? Function(HistoryLoaded value)? loaded,
    TResult? Function(HistoryError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryLoading value)? loading,
    TResult Function(HistoryLoaded value)? loaded,
    TResult Function(HistoryError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HistoryLoadingImplCopyWith<$Res> {
  factory _$$HistoryLoadingImplCopyWith(_$HistoryLoadingImpl value,
          $Res Function(_$HistoryLoadingImpl) then) =
      __$$HistoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryLoadingImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryLoadingImpl>
    implements _$$HistoryLoadingImplCopyWith<$Res> {
  __$$HistoryLoadingImplCopyWithImpl(
      _$HistoryLoadingImpl _value, $Res Function(_$HistoryLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HistoryLoadingImpl implements HistoryLoading {
  const _$HistoryLoadingImpl();

  @override
  String toString() {
    return 'HistoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HistoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ScanRecord> scans) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ScanRecord> scans)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ScanRecord> scans)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(HistoryLoading value) loading,
    required TResult Function(HistoryLoaded value) loaded,
    required TResult Function(HistoryError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryLoading value)? loading,
    TResult? Function(HistoryLoaded value)? loaded,
    TResult? Function(HistoryError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryLoading value)? loading,
    TResult Function(HistoryLoaded value)? loaded,
    TResult Function(HistoryError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HistoryLoading implements HistoryState {
  const factory HistoryLoading() = _$HistoryLoadingImpl;
}

/// @nodoc
abstract class _$$HistoryLoadedImplCopyWith<$Res> {
  factory _$$HistoryLoadedImplCopyWith(
          _$HistoryLoadedImpl value, $Res Function(_$HistoryLoadedImpl) then) =
      __$$HistoryLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ScanRecord> scans});
}

/// @nodoc
class __$$HistoryLoadedImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryLoadedImpl>
    implements _$$HistoryLoadedImplCopyWith<$Res> {
  __$$HistoryLoadedImplCopyWithImpl(
      _$HistoryLoadedImpl _value, $Res Function(_$HistoryLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scans = null,
  }) {
    return _then(_$HistoryLoadedImpl(
      null == scans
          ? _value._scans
          : scans // ignore: cast_nullable_to_non_nullable
              as List<ScanRecord>,
    ));
  }
}

/// @nodoc

class _$HistoryLoadedImpl implements HistoryLoaded {
  const _$HistoryLoadedImpl(final List<ScanRecord> scans) : _scans = scans;

  final List<ScanRecord> _scans;
  @override
  List<ScanRecord> get scans {
    if (_scans is EqualUnmodifiableListView) return _scans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scans);
  }

  @override
  String toString() {
    return 'HistoryState.loaded(scans: $scans)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryLoadedImpl &&
            const DeepCollectionEquality().equals(other._scans, _scans));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_scans));

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryLoadedImplCopyWith<_$HistoryLoadedImpl> get copyWith =>
      __$$HistoryLoadedImplCopyWithImpl<_$HistoryLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ScanRecord> scans) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(scans);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ScanRecord> scans)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(scans);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ScanRecord> scans)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(scans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryLoading value) loading,
    required TResult Function(HistoryLoaded value) loaded,
    required TResult Function(HistoryError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryLoading value)? loading,
    TResult? Function(HistoryLoaded value)? loaded,
    TResult? Function(HistoryError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryLoading value)? loading,
    TResult Function(HistoryLoaded value)? loaded,
    TResult Function(HistoryError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HistoryLoaded implements HistoryState {
  const factory HistoryLoaded(final List<ScanRecord> scans) =
      _$HistoryLoadedImpl;

  List<ScanRecord> get scans;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryLoadedImplCopyWith<_$HistoryLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryErrorImplCopyWith<$Res> {
  factory _$$HistoryErrorImplCopyWith(
          _$HistoryErrorImpl value, $Res Function(_$HistoryErrorImpl) then) =
      __$$HistoryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HistoryErrorImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryErrorImpl>
    implements _$$HistoryErrorImplCopyWith<$Res> {
  __$$HistoryErrorImplCopyWithImpl(
      _$HistoryErrorImpl _value, $Res Function(_$HistoryErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HistoryErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HistoryErrorImpl implements HistoryError {
  const _$HistoryErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HistoryState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryErrorImplCopyWith<_$HistoryErrorImpl> get copyWith =>
      __$$HistoryErrorImplCopyWithImpl<_$HistoryErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ScanRecord> scans) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ScanRecord> scans)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ScanRecord> scans)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryLoading value) loading,
    required TResult Function(HistoryLoaded value) loaded,
    required TResult Function(HistoryError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryLoading value)? loading,
    TResult? Function(HistoryLoaded value)? loaded,
    TResult? Function(HistoryError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryLoading value)? loading,
    TResult Function(HistoryLoaded value)? loaded,
    TResult Function(HistoryError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HistoryError implements HistoryState {
  const factory HistoryError(final String message) = _$HistoryErrorImpl;

  String get message;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryErrorImplCopyWith<_$HistoryErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
