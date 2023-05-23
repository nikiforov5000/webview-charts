import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/screens/top/widgets/trader_item.dart';

class TableHeader extends StatelessWidget {
  TableHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopTableRow(

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 5, child: TableHeaderCellText('№')),
          Expanded(flex: 9, child: TableHeaderCellText('Country')),
          Expanded(flex: 11, child: TableHeaderCellText('Name')),
          Expanded(flex: 10, child: TableHeaderCellText('Deposit')),
          TableHeaderCellText('Profit'),
        ],
      ),
      1,
    );
  }
}

class TableHeaderCellText extends StatelessWidget {
  final String _text;
  const TableHeaderCellText(this._text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }
}

