//abcd
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int count = 0;

  void increment() {
    if (count < 10) count++;
    notifyListeners();
  }

  void remove() {
    if (count > 0) count--;
    notifyListeners();
  }

  void reset() {
    count = 0;
    notifyListeners();
  }
}
