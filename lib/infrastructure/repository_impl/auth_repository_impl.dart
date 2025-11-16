import 'package:dio/dio.dart';
import 'package:wash_app/domain/entities/user.dart';
import 'package:wash_app/domain/repositories/auth_repository.dart';
import 'package:wash_app/infrastructure/http/api_service.dart';
import 'package:wash_app/infrastructure/models/user_model.dart';
import 'package:wash_app/infrastructure/models/user_request_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ApiService _apiService;

  AuthRepositoryImpl(this._apiService);

  @override
  Future<User?> getUserByUsername(String username) async {
    try {
      final response = await _apiService.dio.get('/appUsers/search/findByUsername', queryParameters: {'username': username});
      if (response.data != null) {
        final userModel = UserModel.fromJson(response.data);
        return UserModel.toEntityStatic(userModel);
      }
      return null;
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return null;
      }
      rethrow;
    }
  }

  @override
  Future<User> registerUser(String username, String email, String role) async {
    final userRequest = UserRequestModel(username: username, email: email, role: role);
    final response = await _apiService.dio.post('/appUsers', data: userRequest.toJson());
    final userModel = UserModel.fromJson(response.data);
    return UserModel.toEntityStatic(userModel);
  }
}
