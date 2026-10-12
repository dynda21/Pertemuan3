import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const hello = 'Hello, World!';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            SizedBox(height: 30),
            Text(hello),
            SectionTitle(title: 'Basic Text'),
            BasicTextWidget(),
            SectionTitle(title: 'Font, Weight dan Style'),
            FontTextWidget(),
            SectionTitle(title: 'Spacing'),
            SpacingTextWidget(),
            SectionTitle(title: 'Decoration dan Shadow'),
            DecorationTextWidget(),
            SectionTitle(title: 'Text Alignment'),
            AlignmentTextWidget(),
            SectionTitle(title: 'maxLines dan overflow'),
            OverflowTextWidget(),
            SectionTitle(title: 'softWrap'),
            SoftWrapTextWidget(),
            SectionTitle(title: 'RichText dan TextSpan'),
            RichTextWidget(),
            SectionTitle(title: 'TextScaler'),
            TextScalerWidget(),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 10),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class BasicTextWidget extends StatelessWidget {
  const BasicTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello Flutter',
      style: TextStyle(
        fontSize: 24,
        color: Colors.blue,
      ),
    );
  }
}

class FontTextWidget extends StatelessWidget {
  const FontTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Normal',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          'Bold',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Semi Bold',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'Italic',
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
        Text(
          'Font Monospace',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'monospace',
          ),
        ),
      ],
    );
  }
}

class SpacingTextWidget extends StatelessWidget {
  const SpacingTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Normal Text',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Letter Spacing',
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 5,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Word Spacing Example',
          style: TextStyle(
            fontSize: 20,
            wordSpacing: 10,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Line 1\nLine 2\nLine 3',
          style: TextStyle(
            fontSize: 20,
            height: 2,
          ),
        ),
      ],
    );
  }
}

class DecorationTextWidget extends StatelessWidget {
  const DecorationTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Underline',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.underline,
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Line Through',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Overline',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.overline,
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Background',
          style: TextStyle(
            fontSize: 20,
            backgroundColor: Colors.yellow,
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Text Shadow',
          style: TextStyle(
            fontSize: 30,
            shadows: [
              Shadow(
                offset: Offset(3, 3),
                blurRadius: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AlignmentTextWidget extends StatelessWidget {
  const AlignmentTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Left',
            textAlign: TextAlign.left,
          ),
          Text(
            'Center',
            textAlign: TextAlign.center,
          ),
          Text(
            'Right',
            textAlign: TextAlign.right,
          ),
          Text(
            'Justify: Flutter adalah framework '
            'untuk membuat aplikasi menggunakan '
            'satu codebase.',
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

class OverflowTextWidget extends StatelessWidget {
  const OverflowTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Flutter adalah framework UI dari Google '
            'yang dapat digunakan untuk membuat aplikasi '
            'Android, iOS, Web dan Desktop.',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 10),
          Text(
            'Flutter adalah framework UI dari Google '
            'yang dapat digunakan untuk membuat aplikasi '
            'Android, iOS, Web dan Desktop.',
            maxLines: 2,
            overflow: TextOverflow.clip,
          ),
        ],
      ),
    );
  }
}

class SoftWrapTextWidget extends StatelessWidget {
  const SoftWrapTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 200,
          child: Text(
            'softWrap true, teks akan turun ke baris berikutnya',
            softWrap: true,
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: 200,
          child: Text(
            'softWrap false, teks tetap satu baris',
            softWrap: false,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: 'Saya sedang belajar ',
          ),
          TextSpan(
            text: 'Flutter',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          TextSpan(
            text: ' dan ',
          ),
          TextSpan(
            text: 'Dart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

class TextScalerWidget extends StatelessWidget {
  const TextScalerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Text normal',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Text dengan ukuran lebih besar',
          textScaler: TextScaler.linear(1.5),
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}