import 'package:flutter/material.dart';
import 'package:flutter_study/23_12_22/star_bucks/star_bucks_home_page.dart';
import 'package:flutter_study/23_12_22/star_bucks/star_bucks_order_page.dart';
import 'package:flutter_study/23_12_22/star_bucks/star_bucks_other_page.dart';
import 'package:flutter_study/23_12_22/star_bucks/star_bucks_pay_page.dart';
import 'package:flutter_study/23_12_22/star_bucks/star_bucks_shop_page.dart';

class StarBucksTabPage extends StatefulWidget {
  const StarBucksTabPage({super.key});

  @override
  State<StarBucksTabPage> createState() => _StarBucksTabPageState();
}

class _StarBucksTabPageState extends State<StarBucksTabPage> {
  int _currentIndex = 0;

  final _pages = const [
    StarBucksHomePage(),
    StarBucksPayPage(),
    StarBucksOrderPage(),
    StarBucksShopPage(),
    StarBucksOtherPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.green,
        selectedLabelStyle: const TextStyle(color: Colors.green),
        unselectedLabelStyle: const TextStyle(color: Colors.green),
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Other',
          ),
        ],
      ),
    );
  }
}
