import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Saya',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilPage(),
    );
  }
}

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Data mahasiswa (bisa diganti sesuai data sendiri)
    const String nama = 'Ahmad Anwarul Iman Alfaqih';
    const String nim = '25781027';
    const String prodi = 'Manajemen Informatika';
    const String email = 'ahmadanwarulimanalfaqih@gmail.com';
    const String noHp = '088213536703';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Foto / Avatar
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blueGrey,
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),

            // Nama
            const Text(
              nama,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),

            // NIM
            Text(
              nim,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 8),

            // Program Studi
            Text(
              prodi,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Email
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.email, color: Colors.blue),
                SizedBox(width: 8),
                Text(email),
              ],
            ),
            const SizedBox(height: 8),

            // No HP
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.phone, color: Colors.green),
                SizedBox(width: 8),
                Text(noHp),
              ],
            ),
            const SizedBox(height: 24),

            // Tombol Tampilkan Info
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Halo, saya $nama'),
                  ),
                );
              },
              child: const Text('Tampilkan Info'),
            ),
          ],
        ),
      ),
    );
  }
}