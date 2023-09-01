import 'package:flutter/material.dart';
import 'package:widgets_basic/screens/ButtonNavBar_screen.dart';
import 'package:widgets_basic/constant/my_constant.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Color.fromARGB(255, 191, 33, 125),
        primaryColor: MyConstant.danger,
      ),
      home: BottomNavBar(),
    );
  }
}