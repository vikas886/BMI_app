import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double? _bmi;
  CalculatorBrain({required this.height, required this.weight});
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi!<18.5){
      return 'Underweight';
    }
    else if (_bmi! >= 18.5&& _bmi!<=24.9) {
      return 'Normal Weight';
    } else if (_bmi! >= 25&&_bmi!<=29.9) {
      return "Overweight";
    } else {
      return 'Obesity';
    }
  }

  String getInterpretation() {
    if(_bmi!<18.5){
      return "Being underweight could be a sign you're not eating enough or you may be ill. If you're underweight, a GP can help.";
    }
    else if (_bmi! >= 18.5&& _bmi!<=24.9) {
      return 'Keep up the good work! Maintaining a healthy weight.';
    } else if (_bmi! >= 25&&_bmi!<=29.9) {
      return "The best way to lose weight if you're overweight is through a combination of diet and exercise.";
    } else {
      return "The best way to lose weight if you're obese is through a combination of diet and exercise, and, in some cases, medicines. See a GP for help and advice.";
    }
  }
}
