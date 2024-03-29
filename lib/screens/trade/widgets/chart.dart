import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/constants/colors.dart';
import 'package:test_job_slavit_ou/data/chart_data.dart';
import 'package:test_job_slavit_ou/models/currency_pair.dart';
import 'package:test_job_slavit_ou/providers/currency_provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Chart extends StatelessWidget {
  Chart({Key? key}) : super(key: key);
  final WebViewController _controller = WebViewController();

  void loadHtml(CurrencyPair newCurrencyPair) {
    _controller
      ..loadHtmlString(ChartData.getHtmlString(newCurrencyPair))
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(kTradeBackgroundColor)
    ;
  }

  @override
  Widget build(BuildContext context) {
    final currencyProvider = Provider.of<CurrencyProvider>(context);
    return StreamBuilder<CurrencyPair>(
      stream: currencyProvider.stream,
      builder: (context, snapshot) {
        loadHtml(currencyProvider.currencyPair);
        return WebViewWidget(
          controller: _controller,
        );
      },
    );
  }
}
