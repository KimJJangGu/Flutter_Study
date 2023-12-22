import 'package:flutter/material.dart';

class StarBucksPayPage extends StatelessWidget {
  const StarBucksPayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('돈 줘'),
      ),
      body: Center(
        child: Image.asset(
          'assets/jgw.jfif',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
