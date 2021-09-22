import 'package:flutter/material.dart';
import 'firstscren.dart';




void main()=>runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primaryColor:Color(0XFF0A0E21),
      // accentColor: Color(0XFF0A0E21),
        scaffoldBackgroundColor: Colors.teal,
     ),
      home: inputpage(
      ),
      );
  }
}
// ignore: camel_case_types
