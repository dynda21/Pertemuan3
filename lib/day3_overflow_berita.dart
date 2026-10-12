import 'package:flutter/material.dart';

class OverflowBeritaWidget extends StatelessWidget {
  const OverflowBeritaWidget({super.key});

  static const judul =
      'Mahasiswa Teknik Informatika Berhasil Membuat Aplikasi Mobile '
      'Pertamanya Menggunakan Flutter dalam Waktu Satu Minggu';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Ellipsis (1 baris):'),
          Text(
            judul,
            maxLines: 1, 
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Text('Ellipsis (3 baris):'), 
          Text(
            judul,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Text('Fade (1 baris):'),
          Text(
            judul,
            maxLines: 1,
            overflow: TextOverflow.fade,
            softWrap: false,
          ),
          SizedBox(height: 12),
          Text('Clip (4 baris):'),
          Text(
            judul,
            maxLines: 4, // diubah dari 3
            overflow: TextOverflow.clip,
          ),
          SizedBox(height: 12),
          Text('Visible (1 baris):'), // tambahan
          Text(
            judul,
            maxLines: 1,
            overflow: TextOverflow.visible,
            softWrap: false,
          ),
        ],
      ),
    );
  }
}