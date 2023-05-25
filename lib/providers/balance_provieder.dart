import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/models/balance.dart';

class BalanceProvider extends ChangeNotifier {
  double _balance = 10000;
  double _investment = 1000;
  final _balanceStreamController = StreamController<double>.broadcast();
  BalanceProvider() {
    _balanceStreamController.add(10000);
  }

  double get investment => _investment;
  set investment(double invest) {
    _investment = invest;
  }

  double get balance => _balance;

  Stream<double> get stream => _balanceStreamController.stream;

  set currentInvestment(double currentInvestment) {
    _investment = currentInvestment;
  }

  double get currentInvestment => _investment;

  set balance(double newBalance) {
    _balance = newBalance;
    _balanceStreamController.add(newBalance);
  }

  void buySell() {
    if (_investment > _balance) {
      return;
    }
    substractFromBalance();
    // await waitFewSec();
    maybeReturnWithGain();
  }

  substractFromBalance() {
    _balance -= _investment;
    _balanceStreamController.add(_balance);
  }

  waitFewSec() async {
    sleep(Duration(seconds: 1));
  }

  maybeReturnWithGain() {
    Random random = Random();
    if (random.nextBool()) {
      _balance += _investment + _investment * 0.7;
      _balanceStreamController.add(_balance);
    }
  }

  @override
  void dispose() {
    _balanceStreamController.close();
    super.dispose();
  }
}
