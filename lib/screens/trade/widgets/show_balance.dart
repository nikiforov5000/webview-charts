import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/current_balance.dart';

class ShowBalance extends StatelessWidget {
  const ShowBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        children: [
          Text('Balance'),
          CurrentBalance(),
        ],
      ),
    );
  }
}
