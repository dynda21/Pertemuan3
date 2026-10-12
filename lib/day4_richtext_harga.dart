import 'package:flutter/material.dart';

class RichTextHargaWidget extends StatelessWidget {
  const RichTextHargaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        style: TextStyle(fontSize: 20, color: Colors.black),
        children: [
          TextSpan(text: 'Harga normal '),
          TextSpan(
            text: 'Rp 150.000',
            style: TextStyle(
              decoration: TextDecoration.lineThrough,
              color: Colors.grey,
            ),
          ),
          TextSpan(text: ' sekarang '),
          TextSpan(
            text: 'Rp 99.000',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

