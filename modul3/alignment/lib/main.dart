import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuaca Malang',
      home: Scaffold(
        backgroundColor: const Color(0xFFFBEAF2),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Malang',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 40),

                const Center(
                  child: Text(
                    '25°',
                    style: TextStyle(
                      fontSize: 90,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                const Spacer(),

                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    HariCuaca(
                      hari: 'Minggu',
                      icon: Icons.sunny,
                      iconColor: Colors.amber,
                      suhu: '20°C',
                    ),
                    HariCuaca(
                      hari: 'Senin',
                      icon: Icons.cloudy_snowing,
                      iconColor: Colors.black87,
                      suhu: '23°C',
                    ),
                    HariCuaca(
                      hari: 'Selasa',
                      icon: Icons.cloud,
                      iconColor: Colors.black87,
                      suhu: '22°C',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HariCuaca extends StatelessWidget {
  final String hari;
  final IconData icon;
  final Color iconColor;
  final String suhu;

  const HariCuaca({
    Key? key,
    required this.hari,
    required this.icon,
    required this.iconColor,
    required this.suhu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          hari,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 8),
        Icon(
          icon,
          color: iconColor,
          size: 32,
        ),
        const SizedBox(height: 8),
        Text(
          suhu,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}