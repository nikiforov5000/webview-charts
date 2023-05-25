import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/providers/balance_provieder.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/plus_minus_icon.dart';

class ChangeInvestmentButton extends StatelessWidget {
  final String sign;
  final TextEditingController controller;

  const ChangeInvestmentButton({
    required this.controller,
    required this.sign,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BalanceProvider balanceProvider = Provider.of<BalanceProvider>(context);
    return GestureDetector(
      onTap: () {
        double currentInvestment = balanceProvider.investment;
        if (currentInvestment >= 100 &&
            currentInvestment + 100 <= balanceProvider.balance.balance) {
          if (sign == '-') {
            balanceProvider.investment -= 100;
          } else {
            balanceProvider.investment += 100;
          }
          controller.text = balanceProvider.investment.toStringAsFixed(0);
          balanceProvider.currentInvestment = balanceProvider.investment;
        }
      },
      child: PlusMinusIcon(sign),
    );
  }
}
