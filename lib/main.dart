import 'package:flutter/material.dart';
import 'Screen/input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xff0a0e21),
          primaryColor: Color(0xff0a0e21)),
      home: InputPage(),
    );
  }
}
