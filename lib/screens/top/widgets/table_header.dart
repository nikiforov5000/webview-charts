import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/screens/top/widgets/table_header_cell_text.dart';
import 'package:test_job_slavit_ou/screens/top/widgets/top_table_row.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopTableRow(
      const Row(
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
