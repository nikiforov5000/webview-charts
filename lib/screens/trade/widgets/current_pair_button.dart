import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/screens/currency_pair/currency_pair_screen.dart';

class CurrencyPairButton extends StatelessWidget {
  const CurrencyPairButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, CurrencyPairScreen.id);
      },
      child: const Text('go to CurrencyPair'),
    );
  }
}