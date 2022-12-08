import 'package:prueba/Screens/lista_de_nombres.dart';

import 'Screens/Configuraciones.dart';
import 'package:flutter/material.dart';
import 'Screens/Recetas.dart';
import 'Screens/addRecetas.dart';

class HOME extends StatefulWidget {
  const HOME({Key? key}) : super(key: key);

  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  int _select = 0;

  _navegador(int pos) {
    switch (pos) {
      case 0:
        return Recetas();
      case 1:
        return Configuraciones();
      case 2:
        return MyHomePage();
    }
  }

  _onSelect(int pos) {
    Navigator.of(context).pop();
    setState(() {
      _select = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Recipify"))),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  _onSelect(2);
                },
                child: Icon(Icons.add)),
            ListTile(
              title: Text("Recetas"),
              leading: Icon(Icons.book),
              selected: (0 == _select),
              onTap: () {
                _onSelect(0);
              },
            ),
            ListTile(
              title: Text("Configuraciones"),
              leading: Icon(Icons.build_circle),
              selected: (1 == _select),
              onTap: () {
                _onSelect(1);
              },
            )
          ],
        ),
      ),
      body: _navegador(_select),
    );
  }
}
