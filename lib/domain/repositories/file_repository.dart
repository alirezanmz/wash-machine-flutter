import 'dart:io';

abstract class FileRepository {
  Future<void> uploadFile(File file, String containerName);
}
