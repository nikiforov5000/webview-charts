import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/constants/box_decorations.dart';
import 'package:test_job_slavit_ou/constants/colors.dart';
import 'package:test_job_slavit_ou/constants/text_styles.dart';
import 'package:test_job_slavit_ou/data/balance_provieder.dart';

class BuySellButton extends StatelessWidget {
  final String label;
  const BuySellButton(this.label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BalanceProvider balanceProvider = Provider.of<BalanceProvider>(context);
    final Color color = label == 'Sell' ? kSellButtonColor : kBuyButtonColor;
    return Container(
      decoration: kRoundedConteinerDecoration.copyWith(color: color),
      child: GestureDetector(
        onTap: () {
          balanceProvider.buySell();
        },
        child: Center(
          child: Text(
            label,
            style: kBigButtonTextStyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
