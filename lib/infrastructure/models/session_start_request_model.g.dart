// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_start_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionStartRequestModelImpl _$$SessionStartRequestModelImplFromJson(
  Map<String, dynamic> json,
) => _$SessionStartRequestModelImpl(
  userId: json['userId'] as String,
  deviceCode: json['deviceCode'] as String,
);

Map<String, dynamic> _$$SessionStartRequestModelImplToJson(
  _$SessionStartRequestModelImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'deviceCode': instance.deviceCode,
};
