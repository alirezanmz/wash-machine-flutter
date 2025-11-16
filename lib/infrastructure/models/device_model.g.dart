// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceModelImpl _$$DeviceModelImplFromJson(Map<String, dynamic> json) =>
    _$DeviceModelImpl(
      id: json['id'] as String,
      deviceCode: json['deviceCode'] as String,
      status: json['status'] as String,
      firmwareVersion: json['firmwareVersion'] as String,
    );

Map<String, dynamic> _$$DeviceModelImplToJson(_$DeviceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceCode': instance.deviceCode,
      'status': instance.status,
      'firmwareVersion': instance.firmwareVersion,
    };
