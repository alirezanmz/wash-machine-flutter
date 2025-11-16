import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_start_request_model.freezed.dart';
part 'session_start_request_model.g.dart';

@freezed
class SessionStartRequestModel with _$SessionStartRequestModel {
  const factory SessionStartRequestModel({
    required String userId,
    required String deviceCode,
  }) = _SessionStartRequestModel;

  factory SessionStartRequestModel.fromJson(Map<String, dynamic> json) => _$SessionStartRequestModelFromJson(json);

  // Map<String, dynamic> toJson() => _$SessionStartRequestModelToJson(this);
}
