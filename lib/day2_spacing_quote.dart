import 'package:flutter/material.dart';

class SpacingQuoteWidget extends StatelessWidget {
  const SpacingQuoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'MOTIVASI HARI INI',
          style: TextStyle(
            fontSize: 14,
            letterSpacing: 8, 
            fontWeight: FontWeight.bold,
            color: Colors.indigo,
          ),
        ),
        SizedBox(height: 24), 
        Text(
          'Belajar sedikit demi sedikit lebih baik daripada tidak sama sekali',
          style: TextStyle(
            fontSize: 20,
            height: 2.5, 
            wordSpacing: 6, 
          ),
        ),
        SizedBox(height: 24),
        Text(
          'Tanpa jarak antarhuruf',
          style: TextStyle(
            fontSize: 16,
            letterSpacing: 0, 
          ),
        ),
        SizedBox(height: 8),
        Text(
          '- Dinda',
          style: TextStyle(
            fontSize: 16,
            letterSpacing: 2,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}