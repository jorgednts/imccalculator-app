import 'package:flutter/material.dart';

class CustomTextFiedlWidget extends StatelessWidget {
  const CustomTextFiedlWidget({
    Key? key,
    required this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xFF767676)),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.fromLTRB(30, 20, 20, 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
