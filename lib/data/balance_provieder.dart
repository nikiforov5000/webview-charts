import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/models/balance.dart';

class BalanceProvider extends ChangeNotifier {
  Balance? _balance;
  double _investment = 1000;
  final _balanceStreamController = StreamController<Balance>.broadcast();

  double get investment => _investment;
  set investment(double invest) {
    _investment = invest;
  }

  Balance get balance => _balance!;


  Stream<Balance> get stream => _balanceStreamController.stream;

  set currentInvestment(double currentInvestment) {
    _investment = currentInvestment;
  }

  double get currentInvestment => _investment;

  set balance(Balance newBalance) {
    _balance = newBalance;
    _balanceStreamController.add(newBalance);
  }

  void buySell() async {
    if (_investment > _balance!.balance) {
      return;
    }
    substructFromBalance();
    await waitFewSec();
    maybeReturnWithGain();
  }
  substructFromBalance() {
    _balance?.balance -= _investment;
    _balanceStreamController.add(_balance!);

  }

  waitFewSec() async {
    sleep(Duration(seconds: 1));
  }

  maybeReturnWithGain() {
    Random random = Random();
    if (random.nextBool()) {
      _balance?.balance += _investment + _investment * 0.7;
      _balanceStreamController.add(_balance!);
    }
  }

  @override
  void dispose() {
    _balanceStreamController.close();
    super.dispose();
  }

}