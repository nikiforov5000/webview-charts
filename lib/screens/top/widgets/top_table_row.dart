import 'package:flutter/material.dart';

class TopTableRow extends StatelessWidget {
  final int index;
  final Widget child;
  TopTableRow(this.child, this.index, {Key? key}) : super(key: key);

  Color light = Colors.green;

  @override
  Widget build(BuildContext context) {
    final Color color = index.isEven ? light : Colors.transparent;
    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 12.5,
          bottom: 12.5,
          right: 20,
          left: 10,
        ),
        child: child,
      ),
    );
  }
}
