import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    required this.bmi,
    required this.weight,
    required this.height,
  });

  final int height;
  final int weight;

  final double bmi;

  String calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return "Overweight";
    } else if (bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return "You have a higher than normal body weight. Try to exercise more.";
    } else if (bmi > 18.5) {
      return "You have a normal body weight. Good job!";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more.";
    }
  }
}

// return bmi > 25 ? 'Overweight' : bmi > 18.5 ? 'Normal' : 'Underweight';
