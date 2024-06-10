import 'package:flutter/material.dart';
import 'models.dart';

class CashbookProvider with ChangeNotifier {
  List<Cashbook> _cashbooks = [];

  List<Cashbook> get cashbooks => _cashbooks;

  void addCashbook(Cashbook cashbook) {
    _cashbooks.add(cashbook);
    notifyListeners();
  }

  void removeCashbook(String id) {
    _cashbooks.removeWhere((cashbook) => cashbook.id == id);
    notifyListeners();
  }

  void updateCashbook(String id, Cashbook newCashbook) {
    final index = _cashbooks.indexWhere((cashbook) => cashbook.id == id);
    if (index != -1) {
      _cashbooks[index] = newCashbook;
      notifyListeners();
    }
  }

  void addTransaction(String cashbookId, Transaction transaction) {
    final cashbook =
        _cashbooks.firstWhere((cashbook) => cashbook.id == cashbookId);
    cashbook.transactions.add(transaction);
    notifyListeners();
  }

  void removeTransaction(String cashbookId, String transactionId) {
    final cashbook =
        _cashbooks.firstWhere((cashbook) => cashbook.id == cashbookId);
    cashbook.transactions
        .removeWhere((transaction) => transaction.id == transactionId);
    notifyListeners();
  }

  void updateTransaction(
      String cashbookId, String transactionId, Transaction newTransaction) {
    final cashbook =
        _cashbooks.firstWhere((cashbook) => cashbook.id == cashbookId);
    final index = cashbook.transactions
        .indexWhere((transaction) => transaction.id == transactionId);
    if (index != -1) {
      cashbook.transactions[index] = newTransaction;
      notifyListeners();
    }
  }

  Transaction? getTransaction(String cashbookId, String transactionId) {
    final cashbook = _cashbooks.firstWhere(
        (cashbook) => cashbook.id == cashbookId,
        orElse: () => Cashbook(id: '', name: '', transactions: []));
    return cashbook.transactions
        .firstWhere((transaction) => transaction.id == transactionId);
  }
}
