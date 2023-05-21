import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/data/chart_data.dart';
import 'package:test_job_slavit_ou/data/currencyProvider.dart';
import 'package:test_job_slavit_ou/data/currency_pair.dart';
import 'package:test_job_slavit_ou/screens/currency_pair/currency_pair_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TradeScreen extends StatefulWidget {
  static const String id = 'TradeScreen';

  TradeScreen({Key? key}) : super(key: key);

  @override
  State<TradeScreen> createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
  WebViewController _controller = WebViewController();

  void loadHtml(CurrencyPair newCurrencyPair) {
    _controller
      ..loadHtmlString(ChartData.htmlString(newCurrencyPair))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
  }

  @override
  Widget build(BuildContext context) {
    final currencyProvider = Provider.of<CurrencyProvider>(context);

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
            StreamBuilder<CurrencyPair>(
              stream: currencyProvider.stream,
              builder: (context, snapshot) {
                loadHtml(snapshot.data ?? CurrencyPair.eurJpy);
                return Expanded(
                  child: WebViewWidget(
                    controller: _controller,
                  )
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
