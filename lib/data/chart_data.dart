import 'package:test_job_slavit_ou/data/currency_pair.dart';

class ChartData {
  static final _map = {
    CurrencyPair.eurUsd: ['tradingview_91dde', 'FX:EURUSD'],
    CurrencyPair.gbpUsd: ['tradingview_82810', 'FX:GBPUSD'],
    CurrencyPair.usdJpy: ['tradingview_a1385', 'FX:USDJPY'],
    CurrencyPair.gbpJpy: ['tradingview_461f8', 'FX:GBPJPY'],
    CurrencyPair.audUsd: ['tradingview_c1665', 'FX:AUDUSD'],
    CurrencyPair.usdCad: ['tradingview_37227', 'FX:USDCAD'],
    CurrencyPair.usdChf: ['tradingview_d4c40', 'FX:USDCHF'],
    CurrencyPair.eurJpy: ['tradingview_69520', 'OANDA:EURJPY'],
    CurrencyPair.nzdUsd: ['tradingview_da2f6', 'FX:NZDUSD'],
    CurrencyPair.audJpy: ['tradingview_94471', 'FX:AUDJPY'],
    CurrencyPair.eurAud: ['tradingview_f023b', 'OANDA:EURJPY'],
    CurrencyPair.cadJpy: ['tradingview_1a770', 'FX:CADJPY'],
    CurrencyPair.audCad: ['tradingview_c2409', 'OANDA:AUDCAD'],
    CurrencyPair.gbpAud: ['tradingview_a7e8e', 'OANDA:GBPAUD'],
    CurrencyPair.eurCad: ['tradingview_8425e', 'FX:EURCAD'],
    CurrencyPair.nzdJpy: ['tradingview_4e96f', 'OANDA:NZDJPY'],
  };

  static String htmlString(currencyPair) {
    String? id = _map[currencyPair]?[0];
    String? symbol = _map[currencyPair]?[1];
    String html =
        '<!-- TradingView Widget BEGIN -->'
        '<div class="tradingview-widget-container">'
        '<div id="$id"></div>'
        '<script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>'
        '<script type="text/javascript">'
        'new TradingView.widget('
        '{'
        '"autosize": true,'
        '"symbol": "$symbol",'
        '"interval": "D",'
        '"timezone": "Etc/UTC",'
        '"theme": "dark",'
        '"style": "1",'
        '"locale": "en",'
        '"toolbar_bg": "#f1f3f6",'
        '"enable_publishing": false,'
        '"hide_top_toolbar": true,'
        '"hide_legend": true,'
        '"save_image": false,'
        '"container_id": "$id"'
        '}'
        ');'
        '</script>'
        '</div>'
        '<!-- TradingView Widget END -->'
    ;
    return html;
  }
  static String miniWidgetHtmlString(currencyPair) {
    String? id = _map[currencyPair]?[0];
    String? symbol = _map[currencyPair]?[1];
    String html =
    '<!-- TradingView Widget BEGIN -->'
    '<div class="tradingview-widget-container">'
    '<div class="tradingview-widget-container__widget"></div>'
    '<script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-mini-symbol-overview.js" async>'
    '{'
    '"autosize": true,'
    '"symbol": "$symbol",'
    '"locale": "en",'
    '"dateRange": "12M",'
    '"colorTheme": "dark",'
    '"isTransparent": true,'
    '"largeChartUrl": "",'
    '"noTimeScale": true,'
    '"chartOnly": true'
    '}'
    '</script>'
    '</div>'
    '<!-- TradingView Widget END -->';
    return html;
  }
}
