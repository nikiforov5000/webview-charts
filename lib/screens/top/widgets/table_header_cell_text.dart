import 'package:flutter/material.dart';

class TableHeaderCellText extends StatelessWidget {
  final String _text;
  const TableHeaderCellText(this._text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    );
  }
}
