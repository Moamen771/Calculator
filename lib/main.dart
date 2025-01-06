import 'package:calculator/screens/splash_screen.dart';
import 'package:calculator/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: lightMode,
      darkTheme: darkMode,
      home: SplashScreen(),
    );
  }
}
