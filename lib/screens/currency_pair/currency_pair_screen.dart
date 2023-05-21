import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/data/currencyProvider.dart';
import 'package:test_job_slavit_ou/data/currency_pair.dart';

class CurrencyPairScreen extends StatelessWidget {
  static const String id = 'currency_pair_screen';

  const CurrencyPairScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CurrencyProvider currencyProvider = Provider.of<CurrencyProvider>(context);
    return Scaffold(
      body: Column(
        children: [
          Text('CurrencyPairScreen()'),
          for (CurrencyPair currencyPair in CurrencyPair.values)
            ElevatedButton(
                onPressed: () {
                  currencyProvider.currencyPair = currencyPair;
                },
                child: Text(currencyPair.name)),
        ],
      ),
    );
  }
}
