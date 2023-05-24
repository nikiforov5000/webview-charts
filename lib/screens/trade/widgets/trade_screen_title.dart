import 'package:flutter/material.dart';

class TradeScreenTitle extends StatelessWidget {
  const TradeScreenTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Trade',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
    );
  }
}
