import 'package:freezed_annotation/freezed_annotation.dart';

part 'telemetry_event.freezed.dart';
part 'telemetry_event.g.dart';

@freezed
class TelemetryEvent with _$TelemetryEvent {
  const factory TelemetryEvent({
    required String id,
    required String deviceCode,
    required double temperature,
    required double waterLevel,
    required DateTime timestamp,
  }) = _TelemetryEvent;

  factory TelemetryEvent.fromJson(Map<String, dynamic> json) => _$TelemetryEventFromJson(json);
}
