import 'package:flutter/material.dart';

class SessionLivePage extends StatelessWidget {
  const SessionLivePage({super.key, required this.deviceCode});

  final String deviceCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Session'),
      ),
      body: Center(
        child: Text('Live Session for Device: $deviceCode'),
      ),
    );
  }
}
