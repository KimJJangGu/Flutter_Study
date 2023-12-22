import 'package:flutter/material.dart';

class StarBucksOrderPage extends StatelessWidget {
  const StarBucksOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('주문'),
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
