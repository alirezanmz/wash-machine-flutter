import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wash_app/domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(createToJson: false)
  const factory UserModel({
    required String id,
    required String username,
    required String role,
    required String email,
    @JsonKey(name: '_links') required Map<String, dynamic> links,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    final links = json['_links'] as Map<String, dynamic>?;
    final selfLink = links?['self'] as Map<String, dynamic>?;
    final href = selfLink?['href'] as String?;
    final id = href?.split('/').last ?? '';

    return _UserModel(
      id: id,
      username: json['username'] as String,
      role: json['role'] as String,
      email: json['email'] as String,
      links: links ?? {},
    );
  }

  factory UserModel.fromEntity(User user) {
    return UserModel(
      id: user.id,
      username: user.username,
      role: user.role,
      email: user.email,
      links: {},
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
