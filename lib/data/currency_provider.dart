import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:test_job_slavit_ou/data/currency_pair.dart';

class CurrencyProvider extends ChangeNotifier {
  CurrencyPair? _currencyPair;
  final _currencyPairStreamController =
      StreamController<CurrencyPair>.broadcast();

  CurrencyPair get currencyPair => _currencyPair!;

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
}
