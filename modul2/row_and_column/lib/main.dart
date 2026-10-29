import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row and Column'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakJempol(warna: Colors.blue, label: 'Biru'),
                  SizedBox(width: 20),
                  KotakJempol(warna: Colors.purple, label: 'Ungu'),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakJempol(warna: Colors.green, label: 'Hijau'),
                  SizedBox(width: 20),
                  KotakJempol(warna: Colors.yellow[700]!, label: 'Kuning'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class KotakJempol extends StatelessWidget {
  final Color warna;
  final String label;

  const KotakJempol({required this.warna, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: warna,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 32,
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}