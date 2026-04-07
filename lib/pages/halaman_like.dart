import 'package:flutter/material.dart';
import 'halaman_like_hasil.dart'; // Import halaman tujuan untuk passing data [cite: 553, 562]

class HalamanLike extends StatefulWidget {
  const HalamanLike({super.key});

  @override
  State<HalamanLike> createState() => _HalamanLikeState(); // Membuat objek State [cite: 487]
}

class _HalamanLikeState extends State<HalamanLike> {
  // 1. Inisialisasi variabel state [cite: 488]
  int suka = 0;

  // 2. Fungsi untuk menambah jumlah like [cite: 489]
  void tambahLike() {
    setState(() {
      suka++; // Memberitahu Flutter ada data berubah agar UI digambar ulang [cite: 490, 491, 480]
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contoh State'), // Judul halaman [cite: 497, 525]
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Posisi konten di tengah [cite: 499]
          children: [
            const Text(
              'Tekan tombol like-nya dong..',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // 3. Menampilkan variabel 'suka' ke UI [cite: 504]
            Text(
              'Jumlah Like: $suka',
              style: const TextStyle(fontSize: 22, color: Colors.blue),
            ),
            const SizedBox(height: 20),
            // 4. Tombol untuk memicu fungsi tambahLike [cite: 512, 514]
            ElevatedButton.icon(
              onPressed: tambahLike,
              icon: const Icon(Icons.thumb_up),
              label: const Text('Like'),
            ),
            const SizedBox(height: 20),
            // 5. Tombol Navigasi sambil membawa data (Passing Data) [cite: 594, 600, 602]
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // Mengirim nilai 'suka' ke constructor HalamanLikeHasil [cite: 600]
                    builder: (context) => HalamanLikeHasil(likeDiterima: suka),
                  ),
                );
              },
              child: const Text('Hasil Like'),
            ),
          ],
        ),
      ),
    );
  }
}