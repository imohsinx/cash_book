import 'package:cash_book/cashbook_screen.dart';
import 'package:cash_book/cashbook_provider.dart';
import 'package:cash_book/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CashbookProvider()),
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      initialRoute: '/',
      routes: {
        '/': (context) => CashbookScreen(),
        // '/second': (context) => SecondScreen(),
      },
    );
  }
}
