import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/constants/box_decorations.dart';
import 'package:test_job_slavit_ou/constants/text_styles.dart';
import 'package:test_job_slavit_ou/data/balance_provieder.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/investment/change_investment_button.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/investment/investment_text_field.dart';

class InvestmentAmountSelector extends StatelessWidget {
  InvestmentAmountSelector({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    BalanceProvider balanceProvider = Provider.of<BalanceProvider>(context);
    _controller.text = balanceProvider.investment.toStringAsFixed(0);

    return Container(
      decoration: kRoundedConteinerDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Investment', style: kSmallButtonTextStyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ChangeInvestmentButton(
                  sign: '-',
                  controller: _controller,
                ),
              ),
              Expanded(
                child: InvestmentTextField(_controller),
              ),
              Expanded(
                child: ChangeInvestmentButton(
                  sign: '+',
                  controller: _controller,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
