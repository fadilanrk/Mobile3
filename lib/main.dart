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
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Beranda"),backgroundColor: Colors.blue),
      body: Container(
        child: Column(
          children:[
            Text("Nama : Fadila Nur Kamala"),
            Text("NIM : 220112001"),
            Text("Prodi : Sistem Informasi"),
            ElevatedButton(
              onPressed: () {
                // Aksi yang akan dijalankan ketika tombol ditekan
              },
              child: Text('Klik Saya'),
            ),
            TextButton(
              onPressed: () {
                // Aksi yang akan dijalankan ketika tombol ditekan
              },
              child: Text('Klik Saya'),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                // Aksi yang akan dijalankan ketika ikon ditekan
              },
            ),
            TextField(
              decoration: InputDecoration(
              labelText: 'Nama',
              hintText: 'Masukkan nama Anda',
              border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                // Aksi yang dijalankan ketika teks berubah
              },
            )
          ],
        ),
      ), 
    );
  }
}