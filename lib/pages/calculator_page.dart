import 'package:flutter/material.dart';
import 'package:imc_calculator/controller/imc_controller.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  String textInfo = "Informe seus dados";
  late IMCController imcController;
  @override
  void initState() {
    super.initState();
    imcController = IMCController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          leading: Image.asset(
            'assets/images/logo_home.png',
          ),
          title: const Text('Calculadora IMC'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    textInfo = "Informe seus dados";
                    heightController.clear();
                    weightController.clear();
                  });
                },
                child: const Icon(Icons.refresh),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 36),
                  child: SizedBox(
                    width: 104,
                    height: 104,
                    child: Image.asset('assets/images/user_icon.png'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 47),
                  width: 300,
                  height: 50,
                  child: TextField(
                    controller: weightController,
                    decoration: const InputDecoration(hintText: 'Peso (kg)'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 38.5),
                  width: 300,
                  height: 50,
                  child: TextField(
                    controller: heightController,
                    decoration: const InputDecoration(hintText: 'Altura (cm)'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 33.5),
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        imcController.calculate(
                            heightController.text, weightController.text);
                        textInfo = imcController.textInfo;
                      });
                    },
                    child: const Text('Calcular'),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 33),
                  child: Text(
                    textInfo,
                    style: const TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
