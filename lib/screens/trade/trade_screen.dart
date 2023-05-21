import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/data/chart_data.dart';
import 'package:test_job_slavit_ou/data/currency_provider.dart';
import 'package:test_job_slavit_ou/data/currency_pair.dart';
import 'package:test_job_slavit_ou/screens/currency_pair/currency_pair_screen.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/chart.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TradeScreen extends StatefulWidget {
  static const String id = 'TradeScreen';

  TradeScreen({Key? key}) : super(key: key);

  @override
  State<TradeScreen> createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {



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
            Chart(),
          ],
        ),
      ),
    );
  }
}



