import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/screens/currency_pair/currency_pair_screen.dart';

class TradeScreen extends StatelessWidget {
  static const String id = 'TradeScreen';
  const TradeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('TradeScreen'),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, CurrencyPairScreen.id);
              },
              child: Text('go to CurrencyPair'),
            ),
          ],
        ),
      ),
    );
  }
}
