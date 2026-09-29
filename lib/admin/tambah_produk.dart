import 'package:flutter/material.dart';

class TambahProdukPage extends StatefulWidget {
  const TambahProdukPage({super.key});

  @override
  State<TambahProdukPage> createState() => _TambahProdukPageState();
}

class _TambahProdukPageState extends State<TambahProdukPage> {
  final _formKey = GlobalKey<FormState>();

  // Controller untuk membaca input teks
  final _barcodeController = TextEditingController();
  final _namaController = TextEditingController();
  final _hargaController = TextEditingController();
  final _stokController = TextEditingController();

  @override
  void dispose() {
    _barcodeController.dispose();
    _namaController.dispose();
    _hargaController.dispose();
    _stokController.dispose();
    super.dispose();
  }

  void _simpanProduk() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Produk "${_namaController.text}" berhasil disimpan!'),
          backgroundColor: Colors.green,
        ),
      );
      Navigator.pop(context); // Kembali ke halaman daftar produk
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Produk Baru'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Field Input Barcode + Tombol Kamera
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _barcodeController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Kode Barcode',
                        hintText: 'Contoh: 899999912345',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.qr_code_scanner),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Barcode tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton.filled(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Scanner kamera akan dihubungkan di sini'),
                        ),
                      );
                    },
                    icon: const Icon(Icons.camera_alt),
                    tooltip: 'Scan Pakai Kamera',
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Field Nama Barang
              TextFormField(
                controller: _namaController,
                decoration: const InputDecoration(
                  labelText: 'Nama Produk',
                  hintText: 'Contoh: Indomie Goreng',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.shopping_bag_outlined),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama produk wajib diisi';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Field Harga
              TextFormField(
                controller: _hargaController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Harga Jual (Rp)',
                  hintText: 'Contoh: 3500',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.attach_money),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Harga tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Field Stok
              TextFormField(
                controller: _stokController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Stok Awal',
                  hintText: 'Contoh: 50',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.inventory_outlined),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Stok awal wajib diisi';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),

              // Tombol Simpan
              ElevatedButton(
                onPressed: _simpanProduk,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'Simpan Produk',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}