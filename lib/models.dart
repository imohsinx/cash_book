import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Transaction {
  final String id;
  final String description;
  final double amount;
  final DateTime date;
  final String reciept;
  final bool isDebit;

  Transaction({
    required this.id,
    required this.description,
    required this.amount,
    required this.date,
    this.reciept = "",
    required this.isDebit,
  });
}

class Cashbook {
  final String id;
  final String name;
  final String description;
  final String color;
  final String currency;
  final List categories;

  final List<Transaction> transactions;

  Cashbook(
      {required this.id,
      required this.name,
      required this.description,
      required this.color,
      required this.currency,
      required this.categories,
      required this.transactions});
}
