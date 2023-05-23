import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/constants/colors.dart';
import 'package:test_job_slavit_ou/models/flag.dart';
import 'package:test_job_slavit_ou/models/trader.dart';

class TraderItem extends StatelessWidget {
  final Trader trader;
  TraderItem(this.trader);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: TraderItemCellText((trader.index).toString()),
        ),
        Expanded(
          flex: 12,
          child: Flag.getFlag(trader.flagImagePath),
        ),
        Expanded(
          flex: 10,
          child: TraderItemCellText(trader.name),
        ),
        Expanded(
          flex: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TraderItemCellText(
                '\$${trader.deposit.toStringAsFixed(0)}',
              ),
            ],
          ),
        ),
        Expanded(
          flex: 14,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TraderItemCellText(
                '\$${trader.profit.toStringAsFixed(0)}',
                color: kGreenColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

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
