
String htmlString() {
  return 'html';
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