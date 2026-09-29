import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  // Saklar pembatas agar kamera tidak memindai berkali-kali dalam 1 detik
  bool _sudahDiScan = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arahkan ke Barcode'),
        backgroundColor: Colors.blue,
      ),
      body: MobileScanner(
        onDetect: (BarcodeCapture capture) {
          if (_sudahDiScan) return; // Jika sudah berhasil, hentikan proses

          final List<Barcode> barcodes = capture.barcodes;
          for (final barcode in barcodes) {
            if (barcode.rawValue != null) {
              _sudahDiScan = true; // Kunci saklar
              debugPrint('✅ BARCODE DITEMUKAN: ${barcode.rawValue}');
              
              // Tutup halaman kamera dan bawa angkanya pulang ke form
              Navigator.pop(context, barcode.rawValue);
              break;
            }
          }
        },
      ),
    );
  }
}