import 'package:flutter/material.dart';
import 'login.dart'; // Mengimpor halaman login

void main() {
  runApp(ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Fashion Wanita',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Halaman Utama
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key); // Tambahkan parameter key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selamat Datang di Toko Fashion'),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink.shade100, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Image.network(
                    'https://marketplace.canva.com/EAFYElY5EE4/1/0/800w/canva-brown-and-white-modern-fashion-banner-landscape-2uXtgbkdkec.jpg',
                    height: 150,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Temukan Tren Terbaru!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Belanja koleksi fashion wanita eksklusif kami.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              icon: const Icon(Icons.shopping_bag),
              label: const Text("Mulai Belanja"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent, // Ganti parameter 'primary' dengan 'backgroundColor'
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                textStyle: const TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}