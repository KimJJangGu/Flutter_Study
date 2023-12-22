import 'package:flutter/material.dart';

class StarBucksHomePage extends StatelessWidget {
  const StarBucksHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈'),
      ),
      body: Center(
        child: ListView(
            children: [
          Image.network(
            'https://www.popco.net/zboard/data/dica_forum_fujifilm/2010/09/24/4314057764c9c811731d18.jpg',
            fit: BoxFit.cover,
          ),
        ]),
      ),
    );
  }
}
