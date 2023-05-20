import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/data/traders_data.dart';
import 'package:test_job_slavit_ou/models/flag.dart';
import 'package:test_job_slavit_ou/models/trader.dart';

class TopScreen extends StatelessWidget {
  static const String id = 'top_screen';
  const TopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TopScreenTitle(),
            Top10Table(),
          ],
        ),
      ),
    );
  }
}

class TopScreenTitle extends StatelessWidget {
  const TopScreenTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('TOP 10 Traders'),
    );
  }
}

class Top10Table extends StatelessWidget {
  const Top10Table({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableHeader(),
        TradersList(),
      ],
    );
  }
}

class TableHeader extends StatelessWidget {
  const TableHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('№'),
        Text('Country'),
        Text('Name'),
        Text('Deposit'),
        Text('Profit'),
      ],
    );
  }
}

class TradersList extends StatelessWidget {
  TradersData _tradersData = TradersData();
  TradersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (Trader trader in _tradersData.traders)
          TraderItem(trader),
      ],
    );
  }
}

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





