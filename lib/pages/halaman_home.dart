import 'package:flutter/material.dart';
import 'halaman_detail.dart';
import 'halaman_like.dart';
import 'package:flutter/material.dart';
import 'halaman_katalog.dart'; // Tambahkan baris ini

class HalamanHome extends StatelessWidget {
  const HalamanHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Warna background halaman sedikit abu-abu agar Card menonjol
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Profil Saya',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0.5),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87, // Warna teks appbar jadi gelap
        elevation: 0, // Appbar flat tanpa bayangan kaku
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0), // Jarak lega di sekeliling layar
          child: Column(
            children: [
              // --- AREA KARTU PROFIL ---
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.04),
                      blurRadius: 15,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Avatar dengan border dinamis
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.blue.shade100,
                          width: 3,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage('assets/poto1.png'),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Teks Nama
                    const Text(
                      'Aprilla Shinta',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Badge Jabatan
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'QA Analyst & UI/UX Analyst',
                        style: TextStyle(
                          color: Colors.blue.shade700,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Kontak Email
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email_outlined,
                          color: Colors.grey.shade500,
                          size: 20,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'aprilla@udb.ac.id',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32), // Jarak antara kartu dan tombol
              // --- AREA TOMBOL MENU ---

              // Tombol Detail (Outlined Style)
              SizedBox(
                width: double.infinity, // Lebar penuh
                height: 55,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HalamanDetail(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.person_outline),
                  label: const Text(
                    'Lihat Detail Profil',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue.shade700,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(color: Colors.blue.shade200, width: 1.5),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Tombol Like (Filled Style)
              SizedBox(
                width: double.infinity, // Lebar penuh
                height: 55,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HalamanLike(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.thumb_up_alt_outlined),
                  label: const Text(
                    'Buka Halaman Like',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade600,
                    foregroundColor: Colors.white,
                    elevation: 4,
                    shadowColor: Colors.blue.withOpacity(0.4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 15,
              ), // Memberi jarak dengan tombol di atasnya
              // Tombol baru untuk Tugas Katalog
              SizedBox(
                width:
                    double.infinity, // Agar tombol memanjang menyesuaikan layar
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Perintah navigasi untuk pindah ke halaman katalog
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HalamanKatalog(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.shopping_cart, color: Colors.white),
                  label: const Text(
                    'Tugas Katalog Belanja',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.orange, // Dibuat warna oranye agar menonjol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ), // Sudut melengkung agar tetap rapi
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
