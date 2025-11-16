// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRequestModelImpl _$$UserRequestModelImplFromJson(
  Map<String, dynamic> json,
) => _$UserRequestModelImpl(
  username: json['username'] as String,
  email: json['email'] as String,
  role: json['role'] as String,
);

Map<String, dynamic> _$$UserRequestModelImplToJson(
  _$UserRequestModelImpl instance,
) => <String, dynamic>{
  'username': instance.username,
  'email': instance.email,
  'role': instance.role,
};
