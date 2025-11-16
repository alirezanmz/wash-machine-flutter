import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wash_app/domain/entities/device.dart';

part 'device_model.freezed.dart';
part 'device_model.g.dart';

@freezed
class DeviceModel with _$DeviceModel {
  const factory DeviceModel({
    required String id,
    required String deviceCode,
    required String status,
    required String firmwareVersion,
  }) = _DeviceModel;

  factory DeviceModel.fromJson(Map<String, dynamic> json) => _$DeviceModelFromJson(json);

  static Device toEntityStatic(DeviceModel model) {
    return Device(
      id: model.id,
      deviceCode: model.deviceCode,
      status: model.status,
      firmwareVersion: model.firmwareVersion,
    );
  }
}
