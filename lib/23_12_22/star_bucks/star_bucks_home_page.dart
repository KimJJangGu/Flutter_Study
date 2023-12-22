import 'package:flutter/material.dart';

class StarBucksHomePage extends StatelessWidget {
  const StarBucksHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('홈'),
              background: Image.network(
                'https://www.popco.net/zboard/data/dica_forum_fujifilm/2010/09/24/4314057764c9c811731d18.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // 다른 위젯 추가
                Center(
                  child: Image.network('https://www.popco.net/zboard/data/dica_forum_fujifilm/2010/09/24/4314057764c9c811731d18.jpg', fit: BoxFit.cover,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
