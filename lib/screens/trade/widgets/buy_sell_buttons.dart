import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/constants/box_decorations.dart';
import 'package:test_job_slavit_ou/constants/colors.dart';
import 'package:test_job_slavit_ou/constants/text_styles.dart';
import 'package:test_job_slavit_ou/data/balance_provieder.dart';

class BuySellButtons extends StatelessWidget {
  const BuySellButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BalanceProvider balanceProvider = Provider.of<BalanceProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            decoration:
                kRoundedConteinerDecoration.copyWith(color: kSellButtonColor),
            child: GestureDetector(
              onTap: () {
                balanceProvider.buySell();
              },
              child: Center(
                  child: Text(
                'Buy Sell',
                style: kBigButtonTextStyle,
              )),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration:
                kRoundedConteinerDecoration.copyWith(color: kBuyButtonColor),
            child: GestureDetector(
              onTap: () {
                balanceProvider.buySell();
              },
              child: Center(
                  child: Text(
                'Buy Sell',
                style: kBigButtonTextStyle,
              )),
            ),
          ),
        ),
      ],
    );
  }
}
