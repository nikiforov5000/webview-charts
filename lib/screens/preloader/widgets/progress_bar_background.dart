import 'package:flutter/material.dart';

class ProgressBackground extends StatelessWidget {
  final double h;

  const ProgressBackground({
    required this.h,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h,
      decoration: BoxDecoration(
        color: const Color(0xff5B5A60),
        borderRadius: BorderRadius.circular(99),
      ),
    );
  }
}