import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/constants/box_decorations.dart';
import 'package:test_job_slavit_ou/constants/text_styles.dart';
import 'package:test_job_slavit_ou/data/currency_pair.dart';
import 'package:test_job_slavit_ou/data/currency_provider.dart';
import 'package:test_job_slavit_ou/providers/screen_index_provider.dart';
import 'package:test_job_slavit_ou/screens/currency_pair/currency_pair_screen.dart';

class CurrencyPairButton extends StatefulWidget {
  const CurrencyPairButton({Key? key}) : super(key: key);

  @override
  State<CurrencyPairButton> createState() => _CurrencyPairButtonState();
}

class _CurrencyPairButtonState extends State<CurrencyPairButton> {
  @override
  Widget build(BuildContext context) {
    final currencyProvider = Provider.of<CurrencyProvider>(context);
    final screenIndexProvider = Provider.of<ScreenIndexProvider>(context);

    return GestureDetector(
      onTap: () {
        setState(() {
          screenIndexProvider.index = 2;
        });
        // Navigator.pushNamed(context, CurrencyPairScreen.id);
      },
      child: StreamBuilder<CurrencyPair>(
        stream: currencyProvider.stream,
        builder: (BuildContext context, snapshot) {
          String currencyPairName = currencyProvider.toString();
          return Container(
            decoration: kRoundedConteinerDecoration,
            child: Center(
              child: Text(
                currencyPairName,
                style: kBigButtonTextStyle,
              ),
            ),
          );
        },
      ),
    );
  }
}
