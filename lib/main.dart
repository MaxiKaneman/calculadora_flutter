import 'package:flutter/material.dart';
import 'package:calculator/calculator.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Básica',
      home: Calculator(),
    );
  }
}