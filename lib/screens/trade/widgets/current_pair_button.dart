import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/constants/box_decorations.dart';
import 'package:test_job_slavit_ou/constants/text_styles.dart';
import 'package:test_job_slavit_ou/models/currency_pair.dart';
import 'package:test_job_slavit_ou/providers/currency_provider.dart';
import 'package:test_job_slavit_ou/providers/screen_index_provider.dart';

class CurrencyPairButton extends StatelessWidget {
  const CurrencyPairButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currencyProvider = Provider.of<CurrencyProvider>(context);
    final screenIndexProvider = Provider.of<ScreenIndexProvider>(context);

    return GestureDetector(
      onTap: () {
        screenIndexProvider.index = 2;
      },
      child: StreamBuilder<CurrencyPair>(
        stream: currencyProvider.stream,
        builder: (BuildContext context, snapshot) {
          return Container(
            decoration: kRoundedConteinerDecoration,
            child: Center(
              child: Text(
                readable(currencyProvider.currencyPair),
                style: kBigButtonTextStyle,
              ),
            ),
          );
        },
      ),
    );
  }
}
