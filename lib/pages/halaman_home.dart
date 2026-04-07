import 'package:flutter/material.dart';
import 'halaman_detail.dart'; // Import halaman detail agar bisa navigasi [cite: 157]

class HalamanHome extends StatelessWidget {
  const HalamanHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'), // Judul AppBar sesuai modul [cite: 33]
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Posisi di tengah [cite: 37]
          children: [
            const Image(
              image: AssetImage('assets/poto1.png'), // Menggunakan asset fotomu
              width: 150,
            ),
            const CircleAvatar(
              radius: 50, // Ukuran lingkaran [cite: 44]
              backgroundImage: AssetImage('assets/helo.png'), // Menggunakan asset keduamu
            ),
            const Icon(Icons.account_circle, size: 100, color: Colors.blue),
            const Text(
              'Aprilla Shinta', // Update Nama
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text('Quality Assurance & Analyst UI/UX'), // Update Role
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email),
                SizedBox(width: 10),
                Text('aprillaaddivi@gmail.com'), // Update Email
              ],
            ),
            const SizedBox(height: 20),
            // Menambahkan tombol untuk berpindah ke halaman lain [cite: 82, 83]
            ElevatedButton.icon(
              onPressed: () {
                // Fungsi Navigator untuk pindah ke HalamanDetail [cite: 162, 164]
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HalamanDetail()),
                );
              },
              icon: const Icon(Icons.info),
              label: const Text('Lihat Detail Profil'),
            ),
          ],
        ),
      ),
    );
  }
}