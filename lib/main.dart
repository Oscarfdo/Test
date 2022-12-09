import "package:flutter/material.dart";
import 'package:prueba/Screens/Recetas.dart';
import 'Screens/lista_de_nombres.dart';
import 'home.dart';

void main() => runApp(const Aplication());

class Aplication extends StatelessWidget {
  const Aplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pantalla Principal",
      home: ListaDeNombreScreen(),
      theme: ThemeData(
          primaryColor: const Color(0xFF506D2F),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0XFF2A2922))),
    );
  }
}
