import 'dart:math';

class BMICalculator {
  BMICalculator({required this.weight, required this.height});

  final int height;
  final int weight;
  double _bmi = 0.0;

  String bmiCalculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25 && _bmi < 39.9) {
      return 'OverWeight';
    } else if (_bmi > 18.4 && _bmi < 24.5) {
      return 'Normal';
    } else if (_bmi <= 18.4) {
      return 'UnderWeight';
    } else if (_bmi >= 40.0) {
      return 'obese';
    } else {
      return 'Not to Range';
    }
  }

  String getInterparation() {
    if (_bmi >= 25 && _bmi < 39.9) {
      return 'your weight is too high. you need to exercise more';
    } else if (_bmi >= 18.4 && _bmi < 24.5) {
      return 'Normal Weight.you have to maintain your health';
    } else if (_bmi >= 40.0) {
      return 'Your weight is extra high. you need exercise more and more and you have to maintain your food';
    } else {
      return 'your weight is too low . you need to eat more food';
    }
  }
}
