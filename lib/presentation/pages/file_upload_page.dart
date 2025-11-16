import 'package:flutter/material.dart';

class FileUploadPage extends StatelessWidget {
  const FileUploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload File'),
      ),
      body: const Center(
        child: Text('File Upload Page'),
      ),
    );
  }
}
