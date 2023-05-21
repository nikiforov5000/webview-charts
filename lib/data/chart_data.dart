

import 'package:test_job_slavit_ou/data/currency_pair.dart';

class ChartData {
  static CurrencyPair currencyPair = CurrencyPair.eurUsd;

  static final _map = {
    CurrencyPair.eurUsd: ['tradingview_91dde','FX:EURUSD'],
    CurrencyPair.gbpUsd: ['tradingview_82810','FX:GBPUSD'],
    CurrencyPair.usdJpy: ['tradingview_a1385','FX:USDJPY'],
    CurrencyPair.gbpJpy: ['tradingview_461f8','FX:GBPJPY'],
    CurrencyPair.audUsd: ['tradingview_c1665','FX:AUDUSD'],
    CurrencyPair.usdCad: ['tradingview_37227','FX:USDCAD'],
    CurrencyPair.usdChf: ['tradingview_d4c40','FX:USDCHF'],
    CurrencyPair.eurJpy: ['tradingview_69520','OANDA:EURJPY'],
    CurrencyPair.nzdUsd: ['tradingview_da2f6','FX:NZDUSD'],
    CurrencyPair.audJpy: ['tradingview_94471','FX:AUDJPY'],
    CurrencyPair.eurAud: ['tradingview_f023b','OANDA:EURJPY'],
    CurrencyPair.cadJpy: ['tradingview_1a770','FX:CADJPY'],
    CurrencyPair.audCad: ['tradingview_c2409','OANDA:AUDCAD'],
    CurrencyPair.gbpAud: ['tradingview_a7e8e','OANDA:GBPAUD'],
    CurrencyPair.eurCad: ['tradingview_8425e','FX:EURCAD'],
    CurrencyPair.nzdJpy: ['tradingview_4e96f','OANDA:NZDJPY'],
  };

  static String htmlString() {

    String? id = _map[currencyPair]?[0];
    String? symbol = _map[currencyPair]?[1];
    // return 'html';
    String html =
        '<div class="tradingview-widget-container">'
        '<div id="$id"></div>'
        '<div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/"'
        'rel="noopener nofollow" target="_blank"><span class="blue-text">Track all markets on TradingView</span></a></div>'
        '<script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>'
        '<script type="text/javascript">'
        'new TradingView.widget('
        '{'
        '"autosize": true,'
        '"symbol": "$symbol",'
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
}

