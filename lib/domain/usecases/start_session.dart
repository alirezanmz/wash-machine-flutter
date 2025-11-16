import 'package:wash_app/domain/entities/session.dart';
import 'package:wash_app/domain/repositories/session_repository.dart';

class StartSession {
  final SessionRepository repository;

  StartSession(this.repository);

  Future<Session> call(String userId, String deviceCode) {
    return repository.startSession(userId, deviceCode);
  }
}
