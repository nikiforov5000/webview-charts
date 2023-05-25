import 'dart:async';

import 'package:flutter/material.dart';
class ScreenIndexProvider extends ChangeNotifier {
  int? _index;
  final _controller = StreamController<int>.broadcast();

  int get currentIndex => _index ?? 0;

  void set index(int i) {
    _index = i;
    notifyListeners();
  }

  Stream<int> get stream => _controller.stream;
}