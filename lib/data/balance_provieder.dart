import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/models/balance.dart';

class BalanceProvider extends ChangeNotifier {
  Balance? _balance;
  final _balanceStreamController = StreamController<Balance>.broadcast();

  Balance get balance => _balance!;

  Stream<Balance> get stream => _balanceStreamController.stream;

  set balance(Balance newBalance) {
    _balance = newBalance;
    _balanceStreamController.add(newBalance);
  }

  @override
  void dispose() {
    _balanceStreamController.close();
    super.dispose();
  }
}