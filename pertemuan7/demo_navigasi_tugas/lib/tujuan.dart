import 'package:flutter/material.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 0,
        title: const Text("Ini Halaman Tujuan"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Untuk berpindah ke halaman baru, gunakan metode "
                  "Navigator.push(). Metode push() akan menambahkan Route "
                  "ke dalam tumpukan Route yang dikelola oleh Navigator. "
                  "Route ini dapat dibuat secara kustom atau menggunakan "
                  "MaterialPageRoute, yang memiliki animasi transisi sesuai "
                  "dengan platform yang digunakan.",
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
              child: const Icon(Icons.beach_access,
                  size: 90, color: Colors.teal),
            ),
            const Text(
              "Untuk menutup halaman kedua dan kembali ke halaman "
                  "pertama, gunakan metode Navigator.pop(). Metode pop() "
                  "akan menghapus Route saat ini dari tumpukan Route yang "
                  "dikelola oleh Navigator.",
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("< Kembali ke home"),
            ),
          ],
        ),
      ),
    );
  }
}