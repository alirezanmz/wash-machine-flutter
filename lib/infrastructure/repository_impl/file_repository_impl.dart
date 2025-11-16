import 'dart:io';
import 'package:dio/dio.dart';
import 'package:wash_app/domain/repositories/file_repository.dart';
import 'package:wash_app/infrastructure/http/api_service.dart';

class FileRepositoryImpl implements FileRepository {
  final ApiService _apiService;

  FileRepositoryImpl(this._apiService);

  @override
  Future<void> uploadFile(File file, String containerName) async {
    String fileName = file.path.split('/').last;
    FormData formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(file.path, filename: fileName),
    });
    await _apiService.dio.post('/api/files/upload', queryParameters: {'containerName': containerName}, data: formData);
  }
}
