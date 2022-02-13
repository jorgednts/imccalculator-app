import 'package:imc_calculator/domain/use_case/use_case_calculate_bmi.dart';

class IMCController {
  IMCController({this.textInfo = 'Informe seus dados'});

  late String textInfo;
  final useCaseCalculateBMI = UseCaseCalculateBMI();

  void calculate(String typedHeight, String typedWeight) {
        textInfo = useCaseCalculateBMI.calculateUserBMI(
        double.parse(typedWeight), double.parse(typedHeight));
  }
}
