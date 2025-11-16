import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wash_app/domain/entities/telemetry_event.dart';

part 'telemetry_event_model.freezed.dart';
part 'telemetry_event_model.g.dart';

@freezed
class TelemetryEventModel with _$TelemetryEventModel {
  const factory TelemetryEventModel({
    required String id,
    required String deviceCode,
    required double temperature,
    required double waterLevel,
    required DateTime timestamp,
  }) = _TelemetryEventModel;

  factory TelemetryEventModel.fromJson(Map<String, dynamic> json) => _$TelemetryEventModelFromJson(json);

  factory TelemetryEventModel.fromEntity(TelemetryEvent telemetryEvent) {
    return TelemetryEventModel(
      id: telemetryEvent.id,
      deviceCode: telemetryEvent.deviceCode,
      temperature: telemetryEvent.temperature,
      waterLevel: telemetryEvent.waterLevel,
      timestamp: telemetryEvent.timestamp,
    );
  }

  static TelemetryEvent toEntityStatic(TelemetryEventModel model) {
    return TelemetryEvent(
      id: model.id,
      deviceCode: model.deviceCode,
      temperature: model.temperature,
      waterLevel: model.waterLevel,
      timestamp: model.timestamp,
    );
  }
}
