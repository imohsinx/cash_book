import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var mediaQueryData = MediaQuery.of(context);
    // var screenWidth = mediaQueryData.size.width;
    // var screenHeight = mediaQueryData.size.height;

    // bool isSmallScreen = screenWidth < 600;

    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return Text('Small screen layout');
            } else {
              return Text('Large screen layout');
            }
          },
        ),
      ),
    );
  }
}
