import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/constants/colors.dart';

class TopTableRow extends StatelessWidget {
  final int index;
  final Widget child;
  TopTableRow(this.child, this.index, {Key? key}) : super(key: key);
  BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    final Color color = index.isOdd ? kLightRowColor : Colors.transparent;
    if (index == -1) {
      borderRadius = const BorderRadius.only(
        topLeft: Radius.circular(7),
        topRight: Radius.circular(7),
      );
    }
    if (index == 9) {
      borderRadius = const BorderRadius.only(
        bottomLeft: Radius.circular(7),
        bottomRight: Radius.circular(7),
      );
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: color,
      ),
      padding: const EdgeInsets.only(
        top: 12.5,
        bottom: 12.5,
        right: 20,
        left: 10,
      ),
      child: child,
    );
  }
}
