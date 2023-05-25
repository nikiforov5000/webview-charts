import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/constants/colors.dart';
import 'package:test_job_slavit_ou/data/chart_data.dart';
import 'package:test_job_slavit_ou/data/currency_provider.dart';
import 'package:test_job_slavit_ou/data/currency_pair.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Chart extends StatelessWidget {
  double? _currentWidth;
  double? _currmaxHeight;

  Chart({Key? key}) : super(key: key);
  final WebViewController _controller = WebViewController();

  void loadHtml(CurrencyPair newCurrencyPair) {
    _controller
      ..loadHtmlString(ChartData.htmlString(newCurrencyPair))
      // ..loadHtmlString(ChartData.htmlString(newCurrencyPair, _currentWidth ?? 400, _currmaxHeight ?? 400))
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(kTradeBackgroundColor)
    ;
  }

  @override
  Widget build(BuildContext context) {
    final currencyProvider = Provider.of<CurrencyProvider>(context);
    // BoxConstraints constraints = BoxConstraints();
    //         _currentWidth = constraints.maxWidth;
    //         _currmaxHeight = constraints.maxHeight;
    return StreamBuilder<CurrencyPair>(
      stream: currencyProvider.stream,
      builder: (context, snapshot) {
        loadHtml(snapshot.data ?? CurrencyPair.eurJpy);
        return WebViewWidget(
          controller: _controller,
        );
      },
    );
  }
}
