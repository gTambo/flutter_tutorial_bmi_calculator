import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Text('calculating...'),
    );
  }
}
