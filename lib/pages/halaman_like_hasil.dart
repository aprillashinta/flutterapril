import 'package:flutter/material.dart';

class HalamanLikeHasil extends StatelessWidget {
  final int likeDiterima;

  const HalamanLikeHasil({super.key, required this.likeDiterima});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Like'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hasil Like!',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            // 3. Menampilkan data dan logika keterangan
            Text(
              'Keterangan: ${likeDiterima > 10 ? "Bagus" : likeDiterima >= 5 ? "Cukup" : "Kurang"}',
              style: const TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            // 4. Tombol untuk kembali ke halaman sebelumnya
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}