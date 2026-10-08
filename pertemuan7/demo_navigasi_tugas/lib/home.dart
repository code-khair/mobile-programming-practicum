import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Text("Ini Halaman Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Banyak aplikasi memiliki beberapa layar untuk menampilkan "
                  "informasi yang berbeda. Contohnya, ada layar produk, dan "
                  "ketika pengguna mengklik produk, akan muncul layar dengan "
                  "detail produk tersebut.",
              style: TextStyle(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.center,
            ),
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(Icons.home, size: 90, color: Colors.blueGrey),
            ),
            const Text(
              "Pertama, kita perlu membuat dua halaman atau \"routes\" "
                  "yang ingin kita tampilkan. Selanjutnya, kita gunakan "
                  "perintah Navigator.push() untuk berpindah dari halaman "
                  "pertama ke halaman kedua. Ini seperti kita membuka "
                  "halaman baru. Terakhir, kita bisa kembali dari halaman "
                  "kedua ke halaman pertama menggunakan Navigator.pop(). "
                  "Seperti menutup halaman kedua dan kembali ke halaman "
                  "pertama.",
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/tujuan');
              },
              child: const Text("Ke halaman tujuan >"),
            ),
          ],
        ),
      ),
    );
  }
}