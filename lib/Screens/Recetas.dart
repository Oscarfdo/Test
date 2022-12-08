import 'package:flutter/material.dart';
import 'package:prueba/Screens/addRecetas.dart';

import 'lista_de_nombres.dart';

class Recetas extends StatelessWidget {
  const Recetas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => MyHomePage(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
