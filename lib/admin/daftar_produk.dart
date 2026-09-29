import 'package:flutter/material.dart';
import 'tambah_produk.dart';


class DaftarProdukPage extends StatefulWidget {
  const DaftarProdukPage({super.key});

  @override
  State<DaftarProdukPage> createState() => _DaftarProdukPageState();
}

class _DaftarProdukPageState extends State<DaftarProdukPage> {
  // Data barang dummy khusus minimarket
  final List<Map<String, dynamic>> _produkList = [
    {
      'barcode': '899999912345',
      'nama': 'Indomie Goreng Spesial 85g',
      'harga': 3100,
      'stok': 48,
    },
    {
      'barcode': '899999954321',
      'nama': 'Aqua Air Mineral 600ml',
      'harga': 3500,
      'stok': 4, // Stok menipis (< 10)
    },
    {
      'barcode': '899888811223',
      'nama': 'Minyak Goreng Bimoli 1L',
      'harga': 21500,
      'stok': 15,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manajemen Stok Produk'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: _produkList.length,
        itemBuilder: (context, index) {
          final produk = _produkList[index];
          final bool isStokMenipis = produk['stok'] <= 10;

          return Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: isStokMenipis ? Colors.red.shade100 : Colors.blue.shade100,
                child: Icon(
                  Icons.inventory_2_outlined,
                  color: isStokMenipis ? Colors.red : Colors.blue,
                ),
              ),
              title: Text(
                produk['nama'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  Text('Barcode: ${produk['barcode']}'),
                  Text(
                    'Harga: Rp ${produk['harga']}',
                    style: const TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              trailing: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: isStokMenipis ? Colors.red.shade50 : Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: isStokMenipis ? Colors.red : Colors.grey.shade300,
                  ),
                ),
                child: Text(
                  'Stok: ${produk['stok']}',
                  style: TextStyle(
                    color: isStokMenipis ? Colors.red : Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TambahProdukPage()),
          );
        },
        icon: const Icon(Icons.add),
        label: const Text('Tambah Produk'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
    );
  }
}