import 'package:flutter/material.dart';
import 'dart:math';

class Calculator extends StatefulWidget {
  final double operando1;
  final double operando2;

  const Calculator({Key? key, this.operando1 = 0, this.operando2 = 0}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Operando 1',
                  fillColor: Colors.black,
                  labelStyle: TextStyle(color: Colors.blue),
                ),
                onChanged: (text) => setState(() => widget.operando1 = double.parse(text)),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Operando 2',
                  fillColor: Colors.black,
                  labelStyle: TextStyle(color: Colors.blue),
                ),
                onChanged: (text) => setState(() => widget.operando2 = double.parse(text)),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              child: Text('+', style: TextStyle(color: Colors.blue)),
              onPressed: () {
                setState(() {
                  widget.operando1 = widget.operando1 + widget.operando2;
                });
              },
            ),
            TextButton(
              child: Text('-', style: TextStyle(color: Colors.blue)),
              onPressed: () {
                setState(() {
                  widget.operando1 = widget.operando1 - widget.operando2;
                });
              },
            ),
            TextButton(
              child: Text('*', style: TextStyle(color: Colors.blue)),
              onPressed: () {
                setState(() {
                  widget.operando1 = widget.operando1 * widget.operando2;
                });
              },
            ),
            TextButton(
              child: Text('/', style: TextStyle(color: Colors.blue)),
              onPressed: () {
                setState(() {
                  widget.operando1 = widget.operando1 / widget.operando2;
                });
              },
            ),
          ],
        ),
        Text(
          '${widget.operando1}',
          style: TextStyle(fontSize: 20, color: Colors.blue),
        ),
      ],
    );
  }
}