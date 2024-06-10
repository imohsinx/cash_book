import 'package:cash_book/home.dart';
import 'package:cash_book/providers/cash_tracker.dart';
import 'package:cash_book/providers/theme_changer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CashTracker()),
        ChangeNotifierProvider(create: (_) => ThemeChanger()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        // '/second': (context) => SecondScreen(),
      },
    );
  }
}
