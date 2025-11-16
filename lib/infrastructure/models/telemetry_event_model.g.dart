// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelemetryEventModelImpl _$$TelemetryEventModelImplFromJson(
  Map<String, dynamic> json,
) => _$TelemetryEventModelImpl(
  id: json['id'] as String,
  deviceCode: json['deviceCode'] as String,
  temperature: (json['temperature'] as num).toDouble(),
  waterLevel: (json['waterLevel'] as num).toDouble(),
  timestamp: DateTime.parse(json['timestamp'] as String),
);

Map<String, dynamic> _$$TelemetryEventModelImplToJson(
  _$TelemetryEventModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'deviceCode': instance.deviceCode,
  'temperature': instance.temperature,
  'waterLevel': instance.waterLevel,
  'timestamp': instance.timestamp.toIso8601String(),
};
