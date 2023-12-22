import 'package:flutter/material.dart';

class StarBucksPayPage extends StatelessWidget {
  const StarBucksPayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/stbpay.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
