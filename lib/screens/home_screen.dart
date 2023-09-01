import 'package:flutter/material.dart';
import 'package:widgets_basic/constant/my_constant.dart';
import 'package:widgets_basic/screens/ButtonNavBar_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255,191, 94, 94),
        title: Text(
          'Flutter First App',
          style: MyConstant().h1Style(),
          ),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 24
          ),
        actions: const [
          Icon(Icons.search, color: Colors.white, size: 24,),
          SizedBox(width: 10),
          Icon(Icons.add, color: Colors.white, size: 24,),
          SizedBox(width: 10),
          Icon(Icons.person, color: Colors.white, size: 24,),
          SizedBox(width: 20),
        ],
      ),
    body: const Center( 
    child: Text(
      'HOME SCREEN',
      style: TextStyle(
        color: Colors.black,
        fontSize: 40,
        fontWeight: FontWeight.w700
        ),
      ),
      ),
    bottomNavigationBar: const BottomNavBar(),
    );
  }
}