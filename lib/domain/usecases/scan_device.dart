import 'package:wash_app/domain/entities/device.dart';
import 'package:wash_app/domain/repositories/device_repository.dart';

class ScanDevice {
  final DeviceRepository repository;

  ScanDevice(this.repository);

  Future<Device?> call(String deviceCode) {
    return repository.getDeviceByCode(deviceCode);
  }
}
