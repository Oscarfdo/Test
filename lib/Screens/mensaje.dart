import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LongitudDelista extends StatelessWidget {
  LongitudDelista(this.longitud, {this.colorNegro = true, Key? key})
      : super(key: key);
  int longitud;
  bool colorNegro;
  @override
  Widget build(BuildContext context) {
    return Text(
      "Tienes $longitud recetas",
      style: TextStyle(color: colorNegro ? Colors.black : Colors.red),
    );
  }
}
