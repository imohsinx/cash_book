import 'package:flutter/material.dart';

class CashbookScreen extends StatelessWidget {
  const CashbookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var mediaQueryData = MediaQuery.of(context);
    // var screenWidth = mediaQueryData.size.width;
    // var screenHeight = mediaQueryData.size.height;

    // bool isSmallScreen = screenWidth < 600;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Column(
              children: [
                AppBar(
                  backgroundColor: Colors.green[500],
                  foregroundColor: Colors.white,
                  title: Text("CashBook"),
                  centerTitle: false,
                  actions: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.settings))
                  ],
                ),
              ],
            );
          } else {
            return Center(
              child: Card(
                child: Column(
                  children: [
                    Container(
                      width: 800,
                      height: 60,
                      child: AppBar(
                        backgroundColor: Colors.green[500],
                        foregroundColor: Colors.white,
                        title: Text("CashBook"),
                        centerTitle: false,
                        actions: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.settings))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
