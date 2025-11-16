import 'package:wash_app/domain/entities/device.dart';

abstract class DeviceRepository {
  Future<Device?> getDeviceByCode(String deviceCode);
}
