import 'package:flutter/material.dart';
import 'package:imc_calculator/pages/calculator_page.dart';
import 'package:imc_calculator/pages/login_page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Caluladora IMC',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xFFC1007E),
          fontFamily: 'Poppins',
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginPage(),
          '/calculator': (context) => const CalculatorPage()
        });
  }
}
