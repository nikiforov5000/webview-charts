import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/constants/box_decorations.dart';
import 'package:test_job_slavit_ou/constants/text_styles.dart';
import 'package:test_job_slavit_ou/data/currency_pair.dart';
import 'package:test_job_slavit_ou/providers/currency_provider.dart';
import 'package:test_job_slavit_ou/providers/screen_index_provider.dart';

class CurrencyPairButton extends StatelessWidget {
  const CurrencyPairButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('currency_pair_button.dart -> build()');
    final currencyProvider = Provider.of<CurrencyProvider>(context);
    final screenIndexProvider = Provider.of<ScreenIndexProvider>(context);

    print('currency_pair_button.dart -> currencyProvider.currencyPair:${currencyProvider.currencyPair}');

    return GestureDetector(
      onTap: () {
        screenIndexProvider.index = 2;
      },
      child: StreamBuilder<CurrencyPair>(
        stream: currencyProvider.stream,
        builder: (BuildContext context, snapshot) {
          print('currency_pair_button.dart -> snapshot.data:${snapshot.data.toString()}');
          return Container(
            decoration: kRoundedConteinerDecoration,
            child: Center(
              child: Text(
                /// TODO services/readable currency pair
                currencyProvider.currencyPair.name,
                style: kBigButtonTextStyle,
              ),
            ),
          );
        },
      ),
    );
  }
}
