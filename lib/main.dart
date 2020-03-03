import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF222b32),
        scaffoldBackgroundColor: Color(0xFF090907),
        cupertinoOverrideTheme: CupertinoThemeData(
          textTheme: CupertinoTextThemeData(
            pickerTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
