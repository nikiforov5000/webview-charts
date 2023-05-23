import 'package:flutter/material.dart';

class TopScreenTitle extends StatelessWidget {
  TopScreenTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'TOP 10 Traders',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
    );
  }
}
