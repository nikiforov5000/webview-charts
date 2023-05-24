import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Color color;
  final Widget child;
  const RoundedContainer({
    required this.color,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          child,
        ],
      ),
    );
  }
}
