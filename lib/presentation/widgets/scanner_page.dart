// lib/presentation/pages/scanner_page.dart

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  // --- REVISI: Kelola state secara manual untuk API v3.x ---
  final MobileScannerController controller = MobileScannerController(
    // Di v3.x, parameter ini diatur di widget, bukan di controller
  );
  bool _isProcessing = false; // Kunci untuk mencegah pop ganda
  bool _isTorchOn = false;
  CameraFacing _cameraFacing = CameraFacing.back;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          'Scan Asset Barcode',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          // Tombol Flash
          IconButton(
            color: Colors.white,
            // --- REVISI: Tampilkan state manual _isTorchOn ---
            icon: Icon(_isTorchOn ? Icons.flash_on : Icons.flash_off),
            iconSize: 32.0,
            onPressed: () {
              // Perbarui state manual DAN panggil controller
              setState(() {
                _isTorchOn = !_isTorchOn;
              });
              controller.toggleTorch();
            },
          ),
          // Tombol Ganti Kamera
          IconButton(
            color: Colors.white,
            // --- REVISI: Tampilkan state manual _cameraFacing ---
            icon: Icon(
              _cameraFacing == CameraFacing.back
                  ? Icons.camera_rear
                  : Icons.camera_front,
            ),
            iconSize: 32.0,
            onPressed: () {
              // Perbarui state manual DAN panggil controller
              setState(() {
                _cameraFacing = _cameraFacing == CameraFacing.back
                    ? CameraFacing.front
                    : CameraFacing.back;
              });
              controller.switchCamera();
            },
          ),
        ],
      ),
      body: MobileScanner(
        controller: controller,
        onDetect: (capture) {
          if (_isProcessing) return;

          final String? code = capture.barcodes.first.rawValue;

          if (code != null && code.isNotEmpty) {
            setState(() {
              _isProcessing = true;
            });
            log("Scanner detected: $code");
            Navigator.of(context).pop(code);
          }
        },
      ),
    );
  }
}
