class UseCaseCalculateBMI {

  String calculateUserBMI(double height, double weight) {
    final bmi = 10000 * (height / (weight * weight));
    var textInfo = 'Informe seus dados';

     if (bmi < 18.6) {
      textInfo = 'Você está abaixo do peso (${bmi.toStringAsPrecision(2)})';
    } else if (bmi >= 18.6 && bmi < 24.9) {
      textInfo = 'Você está no peso ideal (${bmi.toStringAsPrecision(2)})';
    } else if (bmi >= 24.9 && bmi < 29.9) {
      textInfo =
      'Você está levemente acima do peso (${bmi.toStringAsPrecision(2)})';
    } else if (bmi >= 29.9 && bmi < 34.9) {
      textInfo =
      'Você está com obesidade grau I (${bmi.toStringAsPrecision(2)})';
    } else if (bmi >= 34.9 && bmi < 39.9) {
      textInfo =
      'Você está com obesidade grau II (${bmi.toStringAsPrecision(2)})';
    } else if (bmi >= 39.9) {
      textInfo =
      'Você está com obesidade grau III (${bmi.toStringAsPrecision(2)})';
    }

    return textInfo;
  }
}
