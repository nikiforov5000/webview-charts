import 'package:flutter/material.dart';

class TraderItemCellText extends StatelessWidget {
  final String _text;
  Color? color;
  TraderItemCellText(
      this._text,
      {
        this.color,
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    color ??= Colors.white;
    return Text(
      _text,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: color,
      ),
    );
  }
}