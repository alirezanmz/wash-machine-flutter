import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:wash_app/application/state/device_state.dart';
import 'dart:convert';

class QRScanPage extends ConsumerStatefulWidget {
  const QRScanPage({super.key});

  @override
  ConsumerState<QRScanPage> createState() => _QRScanPageState();
}

class _QRScanPageState extends ConsumerState<QRScanPage> {
  MobileScannerController cameraController = MobileScannerController();
  bool _isScanning = true;

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<DeviceState>(deviceStateProvider, (previous, next) {
      if (next.device != null) {
        context.go('/device/${next.device!.deviceCode}');
      } else if (next.error != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Device lookup failed: ${next.error}')),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan QR Code'),
        actions: [
          IconButton(
            color: Colors.white,
            icon: ValueListenableBuilder(
              valueListenable: cameraController.torchState,
              builder: (context, state, child) {
                switch (state as TorchState) {
                  case TorchState.off:
                    return const Icon(Icons.flash_off, color: Colors.grey);
                  case TorchState.on:
                    return const Icon(Icons.flash_on, color: Colors.yellow);
                }
              },
            ),
            onPressed: () => cameraController.toggleTorch(),
          ),
          IconButton(
            color: Colors.white,
            icon: ValueListenableBuilder(
              valueListenable: cameraController.cameraFacingState,
              builder: (context, state, child) {
                switch (state as CameraFacing) {
                  case CameraFacing.front:
                    return const Icon(Icons.camera_front);
                  case CameraFacing.back:
                    return const Icon(Icons.camera_rear);
                }
              },
            ),
            onPressed: () => cameraController.switchCamera(),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: MobileScanner(
              controller: cameraController,
              onDetect: (capture) {
                if (_isScanning) {
                  final List<Barcode> barcodes = capture.barcodes;
                  if (barcodes.isNotEmpty) {
                    final String? rawValue = barcodes.first.rawValue;
                    if (rawValue != null) {
                      _isScanning = false; // Stop scanning after first detection
                      _handleQrCode(rawValue);
                    }
                  }
                }
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Theme.of(context).primaryColor,
            child: const Text(
              'Place a QR code in the scanner area',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  void _handleQrCode(String qrCodeValue) async {
    try {
      final Map<String, dynamic> data = json.decode(qrCodeValue);
      final String? deviceCode = data['deviceCode'];

      if (deviceCode != null && deviceCode.isNotEmpty) {
        final deviceNotifier = ref.read(deviceStateProvider.notifier);
        await deviceNotifier.scanDevice(deviceCode);
      } else {
        _showError('Invalid QR code: deviceCode not found.');
      }
    } catch (e) {
      _showError('Failed to parse QR code: $e');
    } finally {
      _isScanning = true; // Re-enable scanning after processing
    }
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
