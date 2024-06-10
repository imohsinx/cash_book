import 'package:flutter/material.dart';

class CashTracker with ChangeNotifier {
  int balance = 0;

  int get count => balance;

  void increment() {
    balance++;
    notifyListeners();
  }
}
