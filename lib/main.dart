import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(0xff111639),),
        scaffoldBackgroundColor:Color(0xff0f0d21),
      ),
      home: InputPage(),
    );
  }
}


