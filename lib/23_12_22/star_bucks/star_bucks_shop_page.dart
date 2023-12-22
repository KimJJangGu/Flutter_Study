import 'package:flutter/material.dart';

class StarBucksShopPage extends StatelessWidget {
  const StarBucksShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/bm1.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
