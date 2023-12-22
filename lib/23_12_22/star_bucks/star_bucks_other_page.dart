import 'package:flutter/material.dart';

class StarBucksOtherPage extends StatelessWidget {
  const StarBucksOtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이제 없음'),
      ),
      body: Center(
        child: Image.asset(
          'assets/jjang.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
