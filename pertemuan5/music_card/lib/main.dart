import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Card',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sedang memutar'),
          centerTitle: true,
        ),
        body: const Center(
          child: MusicCard(),
        ),
      ),
    );
  }
}

class MusicCard extends StatefulWidget {
  const MusicCard({super.key});

  @override
  State<MusicCard> createState() => _MusicCardState();
}

class _MusicCardState extends State<MusicCard> {
  bool disukai = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Cover album (ikon)
            Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Icon(
                  Icons.album,
                  size: 90,
                  color: Colors.white54,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Judul lagu, nama artis, dan tombol like
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Judul & artis mengisi ruang yang tersedia
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'judul lagu',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'nama artis',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade400,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const Spacer(flex: 1),

                // Tombol like
                IconButton(
                  onPressed: () {
                    setState(() {
                      disukai = !disukai;
                    });
                  },
                  icon: Icon(
                    disukai ? Icons.favorite : Icons.favorite_border,
                    color: Colors.pinkAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}