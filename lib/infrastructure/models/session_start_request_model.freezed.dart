// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_start_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SessionStartRequestModel _$SessionStartRequestModelFromJson(
  Map<String, dynamic> json,
) {
  return _SessionStartRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SessionStartRequestModel {
  String get userId => throw _privateConstructorUsedError;
  String get deviceCode => throw _privateConstructorUsedError;

  /// Serializes this SessionStartRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionStartRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionStartRequestModelCopyWith<SessionStartRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionStartRequestModelCopyWith<$Res> {
  factory $SessionStartRequestModelCopyWith(
    SessionStartRequestModel value,
    $Res Function(SessionStartRequestModel) then,
  ) = _$SessionStartRequestModelCopyWithImpl<$Res, SessionStartRequestModel>;
  @useResult
  $Res call({String userId, String deviceCode});
}

/// @nodoc
class _$SessionStartRequestModelCopyWithImpl<
  $Res,
  $Val extends SessionStartRequestModel
>
    implements $SessionStartRequestModelCopyWith<$Res> {
  _$SessionStartRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionStartRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? deviceCode = null}) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            deviceCode: null == deviceCode
                ? _value.deviceCode
                : deviceCode // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionStartRequestModelImplCopyWith<$Res>
    implements $SessionStartRequestModelCopyWith<$Res> {
  factory _$$SessionStartRequestModelImplCopyWith(
    _$SessionStartRequestModelImpl value,
    $Res Function(_$SessionStartRequestModelImpl) then,
  ) = __$$SessionStartRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String deviceCode});
}

/// @nodoc
class __$$SessionStartRequestModelImplCopyWithImpl<$Res>
    extends
        _$SessionStartRequestModelCopyWithImpl<
          $Res,
          _$SessionStartRequestModelImpl
        >
    implements _$$SessionStartRequestModelImplCopyWith<$Res> {
  __$$SessionStartRequestModelImplCopyWithImpl(
    _$SessionStartRequestModelImpl _value,
    $Res Function(_$SessionStartRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionStartRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? deviceCode = null}) {
    return _then(
      _$SessionStartRequestModelImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        deviceCode: null == deviceCode
            ? _value.deviceCode
            : deviceCode // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionStartRequestModelImpl implements _SessionStartRequestModel {
  const _$SessionStartRequestModelImpl({
    required this.userId,
    required this.deviceCode,
  });

  factory _$SessionStartRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionStartRequestModelImplFromJson(json);

  @override
  final String userId;
  @override
  final String deviceCode;

  @override
  String toString() {
    return 'SessionStartRequestModel(userId: $userId, deviceCode: $deviceCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionStartRequestModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.deviceCode, deviceCode) ||
                other.deviceCode == deviceCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, deviceCode);

  /// Create a copy of SessionStartRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionStartRequestModelImplCopyWith<_$SessionStartRequestModelImpl>
  get copyWith =>
      __$$SessionStartRequestModelImplCopyWithImpl<
        _$SessionStartRequestModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionStartRequestModelImplToJson(this);
  }
}

abstract class _SessionStartRequestModel implements SessionStartRequestModel {
  const factory _SessionStartRequestModel({
    required final String userId,
    required final String deviceCode,
  }) = _$SessionStartRequestModelImpl;

  factory _SessionStartRequestModel.fromJson(Map<String, dynamic> json) =
      _$SessionStartRequestModelImpl.fromJson;

  @override
  String get userId;
  @override
  String get deviceCode;

  /// Create a copy of SessionStartRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionStartRequestModelImplCopyWith<_$SessionStartRequestModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
