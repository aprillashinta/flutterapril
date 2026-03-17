import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Mahasiswa UDB',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profil Saya'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Foto profil berbentuk lingkaran
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage('assets/poto1.png'),
              ),
              const SizedBox(height: 20), // Jarak antar elemen
              // Nama Lengkap
              const Text(
                'Aprilla Shinta',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),

              // Detail Jurusan
              const Text(
                'S1 Sistem Informasi',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const Text(
                'Universitas Duta Bangsa Surakarta',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),

              // Baris untuk Email
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email, color: Colors.blue),
                  SizedBox(width: 10),
                  Text('aprillashinta@student.udb.ac.id'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
