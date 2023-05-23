import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/constants/colors.dart';
import 'package:test_job_slavit_ou/models/flag.dart';
import 'package:test_job_slavit_ou/models/trader.dart';
import 'package:test_job_slavit_ou/screens/top/widgets/trader_item_cell_text.dart';

class TraderItem extends StatelessWidget {
  final Trader trader;
  const TraderItem(this.trader, {Key? key}) : super(key: key);

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
