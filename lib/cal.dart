import 'dart:math';

import 'package:flutter/material.dart';

class CALC {
  CALC({required this.height, required this.weight});
  final double height;
  final int weight;
  double bmi = 0;
  String result() {
    bmi = (weight / pow(height / 100, 2));
    return bmi.toStringAsFixed(1);
  }

  String text1() {
    if (bmi >= 25) {
      return 'Over Weight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Under weight';
    }
  }

  String advise() {
    if (bmi >= 25) {
      return 'You have more than normal body weight.\n Try to do more Exercise';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight.\nGood job!';
    } else {
      return 'You have a lower than normal body weight.\n Try to eat more';
    }
  }

  Color color1() {
    if (bmi >= 25 || bmi <= 18.5) {
      return Color.fromARGB(255, 195, 5, 5);
    } else {
      return Colors.green;
    }
  }
}
