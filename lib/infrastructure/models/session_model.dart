import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wash_app/domain/entities/session.dart';

part 'session_model.freezed.dart';
part 'session_model.g.dart';

@freezed
class SessionModel with _$SessionModel {
  const factory SessionModel({
    required String id,
    required String userId,
    required String deviceCode,
    required DateTime startTime,
    DateTime? endTime,
    required String status,
  }) = _SessionModel;

  factory SessionModel.fromJson(Map<String, dynamic> json) => _$SessionModelFromJson(json);

  factory SessionModel.fromEntity(Session session) {
    return SessionModel(
      id: session.id,
      userId: session.userId,
      deviceCode: session.deviceCode,
      startTime: session.startTime,
      endTime: session.endTime,
      status: session.status,
    );
  }

  static Session toEntityStatic(SessionModel model) {
    return Session(
      id: model.id,
      userId: model.userId,
      deviceCode: model.deviceCode,
      startTime: model.startTime,
      endTime: model.endTime,
      status: model.status,
    );
  }
}
