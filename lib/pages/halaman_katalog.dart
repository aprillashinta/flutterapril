import 'package:flutter/material.dart';
import 'halaman_konfirmasi.dart';

class HalamanKatalog extends StatefulWidget {
  const HalamanKatalog({super.key});

  @override
  State<HalamanKatalog> createState() => _HalamanKatalogState();
}

class _HalamanKatalogState extends State<HalamanKatalog> {
  String namaBarang = "Kopi Susu Gula Aren";
  int jumlah = 0;

  void tambahJumlah() {
    setState(() {
      jumlah++;
    });
  }

  void kurangJumlah() {
    setState(() {
      if (jumlah > 0) jumlah--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA), // Background abu-abu kebiruan yang soft
      appBar: AppBar(
        title: const Text(
          'Katalog Belanja',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            // Card Produk
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.04),
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  )
                ],
              ),
              child: Column(
                children: [
                  // Ikon produk dengan background lingkaran
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.brown.shade50,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.coffee, size: 64, color: Colors.brown.shade400),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    namaBarang,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Perpaduan kopi murni dan manisnya gula aren asli.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black45, height: 1.5),
                  ),
                  const SizedBox(height: 32),
                  
                  // Area Counter (+ / -)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildCounterBtn(
                        Icons.remove, 
                        kurangJumlah, 
                        jumlah > 0 ? Colors.redAccent : Colors.grey.shade300,
                      ),
                      Container(
                        width: 60,
                        alignment: Alignment.center,
                        child: Text(
                          '$jumlah',
                          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                      ),
                      _buildCounterBtn(Icons.add, tambahJumlah, Colors.blueAccent),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            
            // Tombol Checkout Full Width
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                // Tombol disable (abu-abu) jika jumlah 0
                onPressed: jumlah > 0 ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HalamanKonfirmasi(
                        namaBarangBeli: namaBarang,
                        totalJumlahBeli: jumlah,
                      ),
                    ),
                  );
                } : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text(
                  'Checkout Pesanan',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Widget khusus untuk tombol bulat agar kode lebih bersih
  Widget _buildCounterBtn(IconData icon, VoidCallback onTap, Color color) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color.withOpacity(0.15),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(icon, color: color, size: 28),
      ),
    );
  }
}