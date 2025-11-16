import 'package:dio/dio.dart';
import 'package:wash_app/domain/entities/device.dart';
import 'package:wash_app/domain/repositories/device_repository.dart';
import 'package:wash_app/infrastructure/http/api_service.dart';
import 'package:wash_app/infrastructure/models/device_model.dart';

class DeviceRepositoryImpl implements DeviceRepository {
  final ApiService _apiService;

  DeviceRepositoryImpl(this._apiService);

  @override
  Future<Device?> getDeviceByCode(String deviceCode) async {
    try {
      final response = await _apiService.dio.get('/api/devices/$deviceCode');
      if (response.data != null) {
        final deviceModel = DeviceModel.fromJson(response.data);
        return DeviceModel.toEntityStatic(deviceModel);
      }
      return null;
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return null;
      }
      rethrow;
    }
  }
}
