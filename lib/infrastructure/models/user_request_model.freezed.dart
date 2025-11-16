// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserRequestModel _$UserRequestModelFromJson(Map<String, dynamic> json) {
  return _UserRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UserRequestModel {
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  /// Serializes this UserRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRequestModelCopyWith<UserRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRequestModelCopyWith<$Res> {
  factory $UserRequestModelCopyWith(
    UserRequestModel value,
    $Res Function(UserRequestModel) then,
  ) = _$UserRequestModelCopyWithImpl<$Res, UserRequestModel>;
  @useResult
  $Res call({String username, String email, String role});
}

/// @nodoc
class _$UserRequestModelCopyWithImpl<$Res, $Val extends UserRequestModel>
    implements $UserRequestModelCopyWith<$Res> {
  _$UserRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? role = null,
  }) {
    return _then(
      _value.copyWith(
            username: null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserRequestModelImplCopyWith<$Res>
    implements $UserRequestModelCopyWith<$Res> {
  factory _$$UserRequestModelImplCopyWith(
    _$UserRequestModelImpl value,
    $Res Function(_$UserRequestModelImpl) then,
  ) = __$$UserRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String email, String role});
}

/// @nodoc
class __$$UserRequestModelImplCopyWithImpl<$Res>
    extends _$UserRequestModelCopyWithImpl<$Res, _$UserRequestModelImpl>
    implements _$$UserRequestModelImplCopyWith<$Res> {
  __$$UserRequestModelImplCopyWithImpl(
    _$UserRequestModelImpl _value,
    $Res Function(_$UserRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? role = null,
  }) {
    return _then(
      _$UserRequestModelImpl(
        username: null == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRequestModelImpl implements _UserRequestModel {
  const _$UserRequestModelImpl({
    required this.username,
    required this.email,
    required this.role,
  });

  factory _$UserRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRequestModelImplFromJson(json);

  @override
  final String username;
  @override
  final String email;
  @override
  final String role;

  @override
  String toString() {
    return 'UserRequestModel(username: $username, email: $email, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRequestModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, email, role);

  /// Create a copy of UserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRequestModelImplCopyWith<_$UserRequestModelImpl> get copyWith =>
      __$$UserRequestModelImplCopyWithImpl<_$UserRequestModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRequestModelImplToJson(this);
  }
}

abstract class _UserRequestModel implements UserRequestModel {
  const factory _UserRequestModel({
    required final String username,
    required final String email,
    required final String role,
  }) = _$UserRequestModelImpl;

  factory _UserRequestModel.fromJson(Map<String, dynamic> json) =
      _$UserRequestModelImpl.fromJson;

  @override
  String get username;
  @override
  String get email;
  @override
  String get role;

  /// Create a copy of UserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRequestModelImplCopyWith<_$UserRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
