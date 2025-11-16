// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelemetryEventImpl _$$TelemetryEventImplFromJson(Map<String, dynamic> json) =>
    _$TelemetryEventImpl(
      id: json['id'] as String,
      deviceCode: json['deviceCode'] as String,
      temperature: (json['temperature'] as num).toDouble(),
      waterLevel: (json['waterLevel'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$TelemetryEventImplToJson(
  _$TelemetryEventImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'deviceCode': instance.deviceCode,
  'temperature': instance.temperature,
  'waterLevel': instance.waterLevel,
  'timestamp': instance.timestamp.toIso8601String(),
};
