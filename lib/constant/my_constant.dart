import 'package:flutter/material.dart';

class MyConstant {
  static Color primary = Color.fromARGB(0, 10, 3, 221);
  static Color success = Color.fromARGB(255, 0, 255, 0);
  static Color warning = Color.fromARGB(255, 255, 255, 0);
  static Color danger = Color.fromARGB(255, 255, 0, 0);
  static Color info = Color.fromARGB(255, 184, 224, 230);

  TextStyle h1Style() {
    return TextStyle(
      fontFamily: 'Raleway',
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }
}