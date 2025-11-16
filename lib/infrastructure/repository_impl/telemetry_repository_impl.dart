import 'package:wash_app/domain/entities/telemetry_event.dart';
import 'package:wash_app/domain/repositories/telemetry_repository.dart';
import 'package:wash_app/infrastructure/http/api_service.dart';
import 'package:wash_app/infrastructure/models/telemetry_event_model.dart';

class TelemetryRepositoryImpl implements TelemetryRepository {
  final ApiService _apiService;

  TelemetryRepositoryImpl(this._apiService);

  @override
  Future<List<TelemetryEvent>> getTelemetryByDeviceCode(String deviceCode) async {
    final response = await _apiService.dio.get('/api/telemetry/device/$deviceCode');
    return (response.data as List).map((e) => TelemetryEventModel.toEntityStatic(TelemetryEventModel.fromJson(e))).toList();
  }
}
