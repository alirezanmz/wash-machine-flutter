import 'dart:io';

import 'package:wash_app/domain/repositories/file_repository.dart';

class UploadFile {
  final FileRepository repository;

  UploadFile(this.repository);

  Future<void> call(File file, String containerName) {
    return repository.uploadFile(file, containerName);
  }
}
