import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/data/balance_provieder.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/change_investment_button.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/investment_text_field.dart';

class InvestmentAmountSelector extends StatelessWidget {
  InvestmentAmountSelector({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    BalanceProvider balanceProvider = Provider.of<BalanceProvider>(context);
    _controller.text = balanceProvider.investment.toStringAsFixed(0);

    return Expanded(
      child: Container(
        color: Colors.tealAccent,
        child: Column(
          children: [
            Text('Investment'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChangeInvestmentButton(sign: '-', controller: _controller),
                InvestmentTextField(_controller),
                ChangeInvestmentButton(sign: '+', controller: _controller),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
