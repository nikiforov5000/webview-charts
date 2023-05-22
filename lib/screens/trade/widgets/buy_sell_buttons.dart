import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/data/balance_provieder.dart';

class BuySellButtons extends StatelessWidget {
  const BuySellButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BalanceProvider balanceProvider = Provider.of<BalanceProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {
            balanceProvider.buySell();
          },
          child: Text('Buy Sell'),
        ),
        ElevatedButton(
          onPressed: () {
            balanceProvider.buySell();
          },
          child: Text('Buy Sell'),
        ),
      ],
    );
  }
}