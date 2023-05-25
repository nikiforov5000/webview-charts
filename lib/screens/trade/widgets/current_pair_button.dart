import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/constants/box_decorations.dart';
import 'package:test_job_slavit_ou/constants/text_styles.dart';
import 'package:test_job_slavit_ou/data/currency_provider.dart';
import 'package:test_job_slavit_ou/screens/currency_pair/currency_pair_screen.dart';

class CurrencyPairButton extends StatelessWidget {
  const CurrencyPairButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CurrencyProvider currencyProvider = Provider.of<CurrencyProvider>(context);
    String currencyPairName = currencyProvider.toString();

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CurrencyPairScreen.id);
      },
      child: Container(
        decoration: kRoundedConteinerDecoration,
        child: Center(
          child: Text(
            currencyPairName,
            style: kBigButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
