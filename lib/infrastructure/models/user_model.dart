import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wash_app/domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String username,
    required String role,
    required String email,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  factory UserModel.fromEntity(User user) {
    return UserModel(
      id: user.id,
      username: user.username,
      role: user.role,
      email: user.email,
    );
  }

  static User toEntityStatic(UserModel model) {
    return User(
      id: model.id,
      username: model.username,
      role: model.role,
      email: model.email,
    );
  }
}
