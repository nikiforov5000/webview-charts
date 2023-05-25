import 'package:flutter/material.dart';

class TradeScreenTitle extends StatelessWidget {
  const TradeScreenTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: const Text(
        'Trade',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
    );
  }
}
