import "package:flutter/material.dart";
import 'package:prueba/home.dart';

void main() => runApp(Aplication());

class Aplication extends StatelessWidget {
  const Aplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pantalla Principal",
      home: HOME(),
      theme: ThemeData(
          primaryColor: Color(0xFF47FFFC), accentColor: Color(0xFFFF47EB)),
    );
  }
}
