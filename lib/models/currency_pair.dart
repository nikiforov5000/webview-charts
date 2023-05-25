enum CurrencyPair {
  eurUsd,
  gbpUsd,
  usdJpy,
  gbpJpy,
  audUsd,
  usdCad,
  usdChf,
  eurJpy,
  nzdUsd,
  audJpy,
  eurAud,
  cadJpy,
  audCad,
  gbpAud,
  eurCad,
  nzdJpy,
}

String readable(CurrencyPair currencyPair) {
  String upper = currencyPair.name.toUpperCase();
  return '${upper.substring(0, 3)} / ${upper.substring(3)}';
}
