import 'package:first_project/admin/daftar_produk.dart';
import 'package:flutter/material.dart';
import 'scanner/scanner_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kasir Minimarket',
      debugShowCheckedModeBanner: false, // Menghilangkan pita "DEBUG" di pojok
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const DaftarProdukPage(),
      

      
    );
  }
}

class KasirPage extends StatelessWidget {
  const KasirPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Kasir Minimarket - Transaksi'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Area Kamera Scanner & Keranjang Belanja',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}