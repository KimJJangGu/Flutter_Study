import 'package:flutter/material.dart';

class StarBucksOtherPage extends StatelessWidget {
  const StarBucksOtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('기타'),
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
