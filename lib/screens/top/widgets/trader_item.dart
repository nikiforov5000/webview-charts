import 'package:flutter/material.dart';
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
        Text((trader.index + 1).toString()),
        Flag.getFlag(trader.flagImagePath),
        Text(trader.name),
        Text(trader.deposit.toStringAsFixed(0)),
        Text(trader.profit.toStringAsFixed(0)),
      ],
    );
  }
}
