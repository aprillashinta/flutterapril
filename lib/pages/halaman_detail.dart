import 'package:flutter/material.dart';

class HalamanDetail extends StatelessWidget {
  const HalamanDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Profil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Ini adalah Halaman Detail'),
            const SizedBox(height: 20),
            ElevatedButton(
              // Perbaikan syntax '=>' dan variabel 'context' di bawah ini
              onPressed: () => Navigator.pop(context), 
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}