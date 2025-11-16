import 'package:wash_app/domain/entities/telemetry_event.dart';

abstract class TelemetryRepository {
  Future<List<TelemetryEvent>> getTelemetryByDeviceCode(String deviceCode);
}
