import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wash_app/domain/entities/telemetry_event.dart';
import 'package:wash_app/domain/usecases/get_live_telemetry.dart';
import 'package:wash_app/injection_container.dart';

part 'telemetry_state.freezed.dart';

@freezed
class TelemetryState with _$TelemetryState {
  const factory TelemetryState({
    @Default([]) List<TelemetryEvent> telemetryEvents,
    @Default(false) bool isLoading,
    String? error,
  }) = _TelemetryState;
}

class TelemetryStateNotifier extends StateNotifier<TelemetryState> {
  final GetLiveTelemetry _getLiveTelemetry;

  TelemetryStateNotifier(this._getLiveTelemetry) : super(const TelemetryState());

  Future<void> fetchTelemetry(String deviceCode) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final events = await _getLiveTelemetry(deviceCode);
      state = state.copyWith(telemetryEvents: events, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  void clearTelemetry() {
    state = const TelemetryState();
  }
}

final telemetryStateProvider = StateNotifierProvider<TelemetryStateNotifier, TelemetryState>((ref) {
  return TelemetryStateNotifier(sl<GetLiveTelemetry>());
});
