import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/screens/top/widgets/table_header.dart';
import 'package:test_job_slavit_ou/screens/top/widgets/traders_list.dart';

class Top10Table extends StatelessWidget {
  const Top10Table({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: const Column(
        children: [
          TableHeader(),
          TradersList(),
        ],
      ),
    );
  }
}
