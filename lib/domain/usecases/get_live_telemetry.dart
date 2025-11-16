import 'package:wash_app/domain/entities/telemetry_event.dart';
import 'package:wash_app/domain/repositories/telemetry_repository.dart';

class GetLiveTelemetry {
  final TelemetryRepository repository;

  GetLiveTelemetry(this.repository);

  Future<List<TelemetryEvent>> call(String deviceCode) {
    return repository.getTelemetryByDeviceCode(deviceCode);
  }
}
