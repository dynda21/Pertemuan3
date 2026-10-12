import 'package:flutter/material.dart';


class RichTextHargaWidget extends StatelessWidget {
  const RichTextHargaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
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
              TextSpan(text: ' + '), // tambahan
              TextSpan(
                text: 'GRATIS ONGKIR', // tambahan
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        RichText(
          text: const TextSpan(
            style: TextStyle(fontSize: 18, color: Colors.black),
            children: [
              TextSpan(text: 'Saya sedang belajar '),
              TextSpan(
                text: 'Flutter',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              TextSpan(text: ' di semester '),
              TextSpan(
                text: '4',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}