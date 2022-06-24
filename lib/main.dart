import 'package:flutter/material.dart';
import 'input_page_dart.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(color: Color(0xff0a0e21)),
          colorScheme: const ColorScheme.dark().copyWith(primary: const Color(0xff0a0e21)),
          scaffoldBackgroundColor: const Color(0xff0a0e21)),
      home: InputPage(),
    );
  }
}


