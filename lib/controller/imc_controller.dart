class IMCController {
  late String textInfo;

  IMCController({this.textInfo = "Informe seus dados"});

  void calculate(String typedHeight, String typedWeight) {
    double height = double.parse(typedHeight);
    double weight = double.parse(typedWeight);

    double imc = 10000 * (weight / (height * height));

    if (imc < 18.6) {
      textInfo = "Você está abaixo do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 18.6 && imc < 24.9) {
      textInfo = "Você está no peso ideal (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 24.9 && imc < 29.9) {
      textInfo =
          "Você está levemente acima do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 29.9 && imc < 34.9) {
      textInfo =
          "Você está com obesidade grau I (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 34.9 && imc < 39.9) {
      textInfo =
          "Você está com obesidade grau II (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 39.9) {
      textInfo =
          "Você está com obesidade grau III (${imc.toStringAsPrecision(2)})";
    }
  }
}
