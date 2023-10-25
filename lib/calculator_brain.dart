import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight})
      : _bmi = weight / pow(height / 100, 2);

  final int height;
  final int weight;

  final double _bmi;

  String calculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Obésité';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Sous poids';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Bien plus haut que la moyenne, attention !';
    } else if (_bmi > 18.5) {
      return 'Vous avez un poids tout à fait normal';
    } else {
      return 'Vous avez un poids très bas, vous devriez manger un peu plus !';
    }
  }
}
