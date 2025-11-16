// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceImpl _$$DeviceImplFromJson(Map<String, dynamic> json) => _$DeviceImpl(
  id: json['id'] as String,
  deviceCode: json['deviceCode'] as String,
  status: json['status'] as String,
  firmwareVersion: json['firmwareVersion'] as String,
);

Map<String, dynamic> _$$DeviceImplToJson(_$DeviceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceCode': instance.deviceCode,
      'status': instance.status,
      'firmwareVersion': instance.firmwareVersion,
    };
