import 'package:wash_app/domain/repositories/session_repository.dart';

class StopSession {
  final SessionRepository repository;

  StopSession(this.repository);

  Future<void> call(String sessionId) {
    return repository.stopSession(sessionId);
  }
}
