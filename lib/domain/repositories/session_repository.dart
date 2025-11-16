import 'package:wash_app/domain/entities/session.dart';

abstract class SessionRepository {
  Future<Session> startSession(String userId, String deviceCode);
  Future<void> stopSession(String sessionId);
}
