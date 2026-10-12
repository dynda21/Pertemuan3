import 'package:flutter/material.dart';

class FontMenuWidget extends StatelessWidget {
  const FontMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kopi Susu Gula Aren',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w300, // diubah dari w800
            fontFamily: 'serif', // tambahan
            color: Colors.brown,
          ),
        ),
        Text(
          'Es kopi dengan susu segar',
          style: TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.italic,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 12),
        Text(
          'Rp 22.000',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900, 
            fontFamily: 'monospace',
          ),
        ),
        SizedBox(height: 12),
        Text(
          'Tersedia: Hot / Iced',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(height: 24), // tambahan: menu kedua
        Text(
          'Matcha Latte',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            fontFamily: 'sans-serif',
            color: Colors.green,
          ),
        ),
        Text(
          'Matcha asli dengan susu oat',
          style: TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.italic,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 12),
        Text(
          'Rp 28.000',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: 'monospace',
          ),
        ),
      ],
    );
  }
}