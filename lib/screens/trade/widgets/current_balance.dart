import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/constants/text_styles.dart';
import 'package:test_job_slavit_ou/data/balance_provieder.dart';
import 'package:test_job_slavit_ou/models/balance.dart';

class CurrentBalance extends StatelessWidget {
  CurrentBalance({Key? key}) : super(key: key);
  double balance = 0;

  @override
  Widget build(BuildContext context) {
    final balanceProvider = Provider.of<BalanceProvider>(context);
    return StreamBuilder<Balance>(
      stream: balanceProvider.stream,
      builder: (context, snapshot) {
        if (snapshot.data != null) {
          balance = snapshot.data!.balance;
        }
        return Text(
          balance.toStringAsFixed(0),
          style: kSmallButtonTextStyle.copyWith(fontSize: 16),
        );
      },
    );
  }
}
