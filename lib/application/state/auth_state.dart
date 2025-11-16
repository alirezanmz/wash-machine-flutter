import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wash_app/domain/entities/user.dart';
import 'package:wash_app/domain/usecases/login_user.dart';
import 'package:wash_app/injection_container.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    User? user,
    @Default(false) bool isLoading,
    String? error,
  }) = _AuthState;
}

class AuthStateNotifier extends StateNotifier<AuthState> {
  final LoginUser _loginUser;

  AuthStateNotifier(this._loginUser) : super(const AuthState());

  Future<void> login(String username, String email, String role) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await _loginUser(username, email, role);
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  void logout() {
    state = const AuthState();
  }
}

final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  return AuthStateNotifier(sl<LoginUser>());
});
