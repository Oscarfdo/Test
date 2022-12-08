import "package:flutter/material.dart";
import 'package:prueba/Screens/Recetas.dart';
import 'Screens/lista_de_nombres.dart';
import 'home.dart';

void main() => runApp(Aplication());

class Aplication extends StatelessWidget {
  const Aplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pantalla Principal",
      home: ListaDeNombreScreen(),
      theme: ThemeData(
          primaryColor: Color(0xFF47FFFC),
          accentColor: Color.fromARGB(255, 181, 128, 14)),
    );
  }
}
