import 'package:wash_app/domain/entities/user.dart';

abstract class AuthRepository {
  Future<User?> getUserByUsername(String username);
  Future<User> registerUser(String username, String email, String role);
}
