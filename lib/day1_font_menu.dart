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
            fontWeight: FontWeight.w800, 
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
            fontWeight: FontWeight.w600,
            fontFamily: 'monospace', // coba: serif, sans-serif
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
      ],
    );
  }
}
