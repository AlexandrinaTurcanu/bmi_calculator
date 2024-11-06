import 'package:flutter/material.dart';

class ResultDisplay extends StatelessWidget {
  final double bmi;
  final String result;

  ResultDisplay({required this.bmi, required this.result});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          bmi.toStringAsFixed(1),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        Text(
          result,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
