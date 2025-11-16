import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_request_model.freezed.dart';
part 'user_request_model.g.dart';

@freezed
class UserRequestModel with _$UserRequestModel {
  const factory UserRequestModel({
    required String username,
    required String email,
    required String role,
  }) = _UserRequestModel;

  factory UserRequestModel.fromJson(Map<String, dynamic> json) => _$$UserRequestModelImplFromJson(json);

  Map<String, dynamic> toJson() => _$$UserRequestModelImplToJson(this as _$UserRequestModelImpl);
}
