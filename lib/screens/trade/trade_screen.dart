import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/screens/currency_pair/currency_pair_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

// Password DsAut9LmWUGZCC4

class TradeScreen extends StatefulWidget {
  static const String id = 'TradeScreen';

  TradeScreen({Key? key}) : super(key: key);

  @override
  State<TradeScreen> createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
  WebViewController _controller = WebViewController();

  @override
  Widget build(BuildContext context) {
    _controller..loadHtmlString(html())
      // ..loadFlutterAsset('assets/html/tradeingview.html')
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
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
            Container(
              child: Expanded(
                child: WebViewWidget(
                  controller: _controller,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

String html() {
  String html =
    '<div class="tradingview-widget-container">'
        '<div id="tradingview_91dde"></div>'
  '<div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/"'
  'rel="noopener nofollow" target="_blank"><span class="blue-text">Track all markets on TradingView</span></a></div>'
  '<script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>'
  '<script type="text/javascript">'
  'new TradingView.widget('
  '{'
  '"autosize": true,'
  '"symbol": "FX:EURUSD",'
  '"interval": "D",'
  '"timezone": "Etc/UTC",'
  '"theme": "light",'
  '"style": "1",'
  '"locale": "en",'
  '"toolbar_bg": "#f1f3f6",'
  '"enable_publishing": false,'
  '"hide_top_toolbar": true,'
  '"hide_legend": true,'
  '"save_image": false,'
  '"container_id": "tradingview_b368b"'
  '}'
  ');'
  '</script>'
  '</div>';

  return html;
}
