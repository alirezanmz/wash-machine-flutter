import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wash_app/domain/entities/session.dart';
import 'package:wash_app/domain/usecases/start_session.dart';
import 'package:wash_app/domain/usecases/stop_session.dart';
import 'package:wash_app/injection_container.dart';

part 'session_state.freezed.dart';

@freezed
class SessionState with _$SessionState {
  const factory SessionState({
    Session? currentSession,
    @Default(false) bool isLoading,
    String? error,
  }) = _SessionState;
}

class SessionStateNotifier extends StateNotifier<SessionState> {
  final StartSession _startSession;
  final StopSession _stopSession;

  SessionStateNotifier(this._startSession, this._stopSession) : super(const SessionState());

  Future<void> startNewSession(String userId, String deviceCode) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final session = await _startSession(userId, deviceCode);
      state = state.copyWith(currentSession: session, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  Future<void> endCurrentSession(String sessionId) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await _stopSession(sessionId);
      state = state.copyWith(currentSession: null, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }
}

final sessionStateProvider = StateNotifierProvider<SessionStateNotifier, SessionState>((ref) {
  return SessionStateNotifier(sl<StartSession>(), sl<StopSession>());
});
