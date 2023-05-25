import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/data/currency_pair.dart';
import 'package:test_job_slavit_ou/providers/currency_provider.dart';
import 'package:test_job_slavit_ou/screens/currency_pair/widgets/currency_pair_list.dart';

class CurrencyPairScreen extends StatelessWidget {
  static const String id = 'currency_pair_screen';

  const CurrencyPairScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CurrencyProvider currencyProvider = Provider.of<CurrencyProvider>(context);

    return Scaffold(
      body: StreamBuilder<CurrencyPair>(
          stream: currencyProvider.stream,
          builder: (BuildContext context, snapshot) {
            return CurrencyPairList();
          }),
    );
  }
}
