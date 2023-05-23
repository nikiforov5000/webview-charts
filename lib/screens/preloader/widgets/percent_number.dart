import 'package:flutter/material.dart';

class PercentNumber extends StatelessWidget {
  final double value;
  const PercentNumber(this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String percentString = '${(value * 100).toStringAsFixed(0)}%';
    return Center(
      child: Text(
        percentString,
        textAlign: TextAlign.end,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
