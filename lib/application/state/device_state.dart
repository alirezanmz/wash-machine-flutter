import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wash_app/domain/entities/device.dart';
import 'package:wash_app/domain/usecases/scan_device.dart';
import 'package:wash_app/injection_container.dart';

part 'device_state.freezed.dart';

@freezed
class DeviceState with _$DeviceState {
  const factory DeviceState({
    Device? device,
    @Default(false) bool isLoading,
    String? error,
  }) = _DeviceState;
}

class DeviceStateNotifier extends StateNotifier<DeviceState> {
  final ScanDevice _scanDevice;

  DeviceStateNotifier(this._scanDevice) : super(const DeviceState());

  Future<void> scanDevice(String deviceCode) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final device = await _scanDevice(deviceCode);
      state = state.copyWith(device: device, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  void clearDevice() {
    state = const DeviceState();
  }
}

final deviceStateProvider = StateNotifierProvider<DeviceStateNotifier, DeviceState>((ref) {
  return DeviceStateNotifier(sl<ScanDevice>());
});
