import 'package:flutter/material.dart';

class StarBucksShopPage extends StatelessWidget {
  const StarBucksShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('둘러보기'),
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
