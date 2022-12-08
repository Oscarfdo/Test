import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
