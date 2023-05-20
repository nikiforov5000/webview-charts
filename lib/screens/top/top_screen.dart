import 'package:flutter/material.dart';

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
  const TradersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TraderItem(trader: trader[index], index: index);
      }
    );
  }
}

class TraderItem extends StatelessWidget {
  final int index;
  TraderItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(index.toString()),
      ],
    );
  }
}





