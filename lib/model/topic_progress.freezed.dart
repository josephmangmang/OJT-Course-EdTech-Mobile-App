// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopicProgress _$TopicProgressFromJson(Map<String, dynamic> json) {
  return _TopicProgress.fromJson(json);
}

/// @nodoc
mixin _$TopicProgress {
  String get id => throw _privateConstructorUsedError;
  int get totalProgress => throw _privateConstructorUsedError;
  int get currentProgress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicProgressCopyWith<TopicProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicProgressCopyWith<$Res> {
  factory $TopicProgressCopyWith(
          TopicProgress value, $Res Function(TopicProgress) then) =
      _$TopicProgressCopyWithImpl<$Res, TopicProgress>;
  @useResult
  $Res call({String id, int totalProgress, int currentProgress});
}

/// @nodoc
class _$TopicProgressCopyWithImpl<$Res, $Val extends TopicProgress>
    implements $TopicProgressCopyWith<$Res> {
  _$TopicProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? totalProgress = null,
    Object? currentProgress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      totalProgress: null == totalProgress
          ? _value.totalProgress
          : totalProgress // ignore: cast_nullable_to_non_nullable
              as int,
      currentProgress: null == currentProgress
          ? _value.currentProgress
          : currentProgress // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopicProgressCopyWith<$Res>
    implements $TopicProgressCopyWith<$Res> {
  factory _$$_TopicProgressCopyWith(
          _$_TopicProgress value, $Res Function(_$_TopicProgress) then) =
      __$$_TopicProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int totalProgress, int currentProgress});
}

/// @nodoc
class __$$_TopicProgressCopyWithImpl<$Res>
    extends _$TopicProgressCopyWithImpl<$Res, _$_TopicProgress>
    implements _$$_TopicProgressCopyWith<$Res> {
  __$$_TopicProgressCopyWithImpl(
      _$_TopicProgress _value, $Res Function(_$_TopicProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? totalProgress = null,
    Object? currentProgress = null,
  }) {
    return _then(_$_TopicProgress(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      totalProgress: null == totalProgress
          ? _value.totalProgress
          : totalProgress // ignore: cast_nullable_to_non_nullable
              as int,
      currentProgress: null == currentProgress
          ? _value.currentProgress
          : currentProgress // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopicProgress implements _TopicProgress {
  const _$_TopicProgress(
      {required this.id,
      required this.totalProgress,
      required this.currentProgress});

  factory _$_TopicProgress.fromJson(Map<String, dynamic> json) =>
      _$$_TopicProgressFromJson(json);

  @override
  final String id;
  @override
  final int totalProgress;
  @override
  final int currentProgress;

  @override
  String toString() {
    return 'TopicProgress(id: $id, totalProgress: $totalProgress, currentProgress: $currentProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopicProgress &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.totalProgress, totalProgress) ||
                other.totalProgress == totalProgress) &&
            (identical(other.currentProgress, currentProgress) ||
                other.currentProgress == currentProgress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, totalProgress, currentProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopicProgressCopyWith<_$_TopicProgress> get copyWith =>
      __$$_TopicProgressCopyWithImpl<_$_TopicProgress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopicProgressToJson(
      this,
    );
  }
}

abstract class _TopicProgress implements TopicProgress {
  const factory _TopicProgress(
      {required final String id,
      required final int totalProgress,
      required final int currentProgress}) = _$_TopicProgress;

  factory _TopicProgress.fromJson(Map<String, dynamic> json) =
      _$_TopicProgress.fromJson;

  @override
  String get id;
  @override
  int get totalProgress;
  @override
  int get currentProgress;
  @override
  @JsonKey(ignore: true)
  _$$_TopicProgressCopyWith<_$_TopicProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
