import 'package:flutter/foundation.dart';

class Transaction {
  final String id;
  final String description;
  final double amount;
  final DateTime date;

  Transaction(
      {required this.id,
      required this.description,
      required this.amount,
      required this.date});
}

class Cashbook {
  final String id;
  final String name;
  final List<Transaction> transactions;

  Cashbook({required this.id, required this.name, required this.transactions});
}
