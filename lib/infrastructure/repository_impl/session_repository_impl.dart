import 'package:wash_app/domain/entities/session.dart';
import 'package:wash_app/domain/repositories/session_repository.dart';
import 'package:wash_app/infrastructure/http/api_service.dart';
import 'package:wash_app/infrastructure/models/session_model.dart';
import 'package:wash_app/infrastructure/models/session_start_request_model.dart';

class SessionRepositoryImpl implements SessionRepository {
  final ApiService _apiService;

  SessionRepositoryImpl(this._apiService);

  @override
  Future<Session> startSession(String userId, String deviceCode) async {
    final requestModel = SessionStartRequestModel(userId: userId, deviceCode: deviceCode);
    final response = await _apiService.dio.post('/api/sessions/start', data: requestModel.toJson());
    return SessionModel.toEntityStatic(SessionModel.fromJson(response.data));
  }

  @override
  Future<void> stopSession(String sessionId) async {
    await _apiService.dio.post('/api/sessions/stop', data: {'sessionId': sessionId});
  }
}
