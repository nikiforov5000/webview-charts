import 'package:flutter/material.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
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
