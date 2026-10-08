import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pemutar Musik',
      theme: ThemeData.dark(), // (a) latar belakang gelap
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pemutar Musik'),
        ),
        body: Center(
          child: Text(
            'Pemutar Musik',
            style: TextStyle(fontSize: 20),
          ),
        ),
        // (b) Control Bar diletakkan di bottomNavigationBar
        bottomNavigationBar: Container(
          // (c) padding & warna latar
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          color: Colors.black54,
          child: Row(
            children: [
              // (d & e) 4 tombol dibagi rata dengan Expanded
              Expanded(
                child: IconButton(
                  icon: const Icon(Icons.shuffle, color: Colors.white),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: const Icon(Icons.skip_previous, color: Colors.white),
                  onPressed: () {},
                ),
              ),
              // (f) tombol Play lebih besar dengan Flexible flex:2 tight
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: IconButton(
                  icon: const Icon(Icons.play_circle_fill,
                      color: Colors.white),
                  iconSize: 48,
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: const Icon(Icons.skip_next, color: Colors.white),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: const Icon(Icons.repeat, color: Colors.white),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}