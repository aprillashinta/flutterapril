import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FIKOM UDB',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profil Mahasiswa Yudebe'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/poto1.png'), width: 150),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/helo.png'),
              ),
              Icon(Icons.account_circle, size: 100, color: Colors.blue),
              Text(
                'Aprilla Shinta',

                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text('Quality Assurance & Analyst UI/UX'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email),
                  SizedBox(width: 10),

                  Text('aprillaaddivi@gmail.com'),
                ],
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
