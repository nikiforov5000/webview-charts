import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/data/balance_provieder.dart';
import 'package:test_job_slavit_ou/models/balance.dart';

class CurrentBalance extends StatelessWidget {
  const CurrentBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final balanceProvider = Provider.of<BalanceProvider>(context);
    return StreamBuilder<Balance>(
      stream: balanceProvider.stream,
      builder: (context, snapshot) {
        double balance = snapshot.data!.balance;
        return Text(balance.toStringAsFixed(0));
      },
    );
  }
}
