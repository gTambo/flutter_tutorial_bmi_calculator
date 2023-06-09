import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          // seedColor: Color(0xFF0A0E21),
          primary: Color(0xFF0A0E21),
          secondary: Colors.greenAccent,
          onSecondary: Color(0xFF0A0E21),
          // background: Color(0xFF0A0E21),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
        // appBarTheme: AppBarTheme(color: Colors.red),
      ),
      home: InputPage(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => InputPage(),
      //   '/calculate': (context) => ResultsPage(),
      // },
    );
  }
}
