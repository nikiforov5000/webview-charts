import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/data/traders_data.dart';
import 'package:test_job_slavit_ou/models/trader.dart';
import 'package:test_job_slavit_ou/screens/top/widgets/top_table_row.dart';
import 'package:test_job_slavit_ou/screens/top/widgets/trader_item.dart';

class TradersList extends StatefulWidget {
  const TradersList({Key? key}) : super(key: key);

  @override
  State<TradersList> createState() => _TradersListState();
}

class _TradersListState extends State<TradersList> {
  int updatePeriod = 5;
  final TradersData _tradersData = TradersData();
  Timer? timer;

  void initTimer() {
    if (timer != null && timer!.isActive) return;

    timer = Timer.periodic(Duration(seconds: updatePeriod), (timer) {
      setState(() {
        _tradersData.updateNumbers();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    initTimer();
    int index = 0;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (Trader trader in _tradersData.traders)
          TopTableRow(TraderItem(trader), index++),
      ],
    );
  }
}
