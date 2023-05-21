import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/screens/top/top_screen.dart';
import 'package:test_job_slavit_ou/screens/trade/trade_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = <Widget>[
    TopScreen(),
    TradeScreen(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 50,
        unselectedItemColor: Colors.grey.shade600,
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'top'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'trade'),
        ],
      ),
    );
  }
}
