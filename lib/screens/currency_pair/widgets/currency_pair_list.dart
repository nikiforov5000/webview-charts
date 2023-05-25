import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/constants/colors.dart';
import 'package:test_job_slavit_ou/data/currency_pair.dart';
import 'package:test_job_slavit_ou/providers/currency_provider.dart';
import 'package:test_job_slavit_ou/screens/currency_pair/widgets/currency_pair_screen_title.dart';
import 'package:test_job_slavit_ou/screens/currency_pair/widgets/select_currency_pair_button.dart';

class CurrencyPairList extends StatelessWidget {
  const CurrencyPairList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    List<Widget> leftCol = [];
    List<Widget> rightCol = [];
    CurrencyProvider currencyProvider = Provider.of<CurrencyProvider>(context);

    for (var currencyPair in CurrencyPair.values) {
      if (currencyPair.index.isEven) {
        leftCol.add(SelectCurrencyPairButton(currencyPair, currencyProvider));
      } else {
        rightCol.add(SelectCurrencyPairButton(currencyPair, currencyProvider));
      }
    }

    return Container(
      color: kCurrencyPairScreenBackgroundColor,
      child: Column(
        children: [
          SizedBox(
            height: height / 12,
          ),
          const CurrencyPairScreenTitle(),
          SizedBox(
            height: height / 30,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: height / 20),
              child: Row(
                children: [
                  Expanded(child: Column(children: leftCol)),
                  Expanded(child: Column(children: rightCol)),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height / 10,
          ),
        ],
      ),
    );
  }
}
