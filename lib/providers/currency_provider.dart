import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:test_job_slavit_ou/data/currency_pair.dart';

class CurrencyProvider extends ChangeNotifier {
  CurrencyPair _currencyPair = CurrencyPair.eurUsd;
  CurrencyProvider() {
    _currencyPairStreamController.add(CurrencyPair.eurUsd);
    _currencyPair = CurrencyPair.eurUsd;
  }
  final _currencyPairStreamController =
      StreamController<CurrencyPair>.broadcast();

  CurrencyPair get currencyPair => _currencyPair;

  @override
  String toString() {
    return _readablePair(currencyPair.name);
  }

  Stream<CurrencyPair> get stream => _currencyPairStreamController.stream;

  set currencyPair(CurrencyPair curr) {
    _currencyPair = curr;
    _currencyPairStreamController.add(curr);
  }

  @override
  void dispose() {
    _currencyPairStreamController.close();
    super.dispose();
  }

  String _readablePair(String name) {
    String leftCurrency = name.substring(0, 3).toUpperCase();
    String rightCurrency = name.substring(3).toUpperCase();
    return '$leftCurrency/$rightCurrency';
  }
}
