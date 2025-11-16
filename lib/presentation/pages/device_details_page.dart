import 'package:flutter/material.dart';

class DeviceDetailsPage extends StatelessWidget {
  const DeviceDetailsPage({super.key, required this.deviceCode});

  final String deviceCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Device Details'),
      ),
      body: Center(
        child: Text('Device Code: $deviceCode'),
      ),
    );
  }
}
