import 'package:wash_app/domain/entities/user.dart';
import 'package:wash_app/domain/repositories/auth_repository.dart';

class LoginUser {
  final AuthRepository repository;

  LoginUser(this.repository);

  Future<User> call(String username, String email, String role) async {
    final user = await repository.getUserByUsername(username);
    if (user != null) {
      return user;
    } else {
      return await repository.registerUser(username, email, role);
    }
  }
}
