import 'package:flutter/material.dart';
import 'presentation/calculator/page/calculator_page.dart';
import 'presentation/login/login_page/login_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
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
