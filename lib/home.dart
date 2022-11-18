import 'package:prueba/Screens/Configuraciones.dart';
import 'package:prueba/Screens/Recetas.dart';
import 'package:prueba/Screens/addRecetas.dart';
import 'Screens/Configuraciones.dart';
import 'package:flutter/material.dart';
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
      appBar: AppBar(title: Text("Recipify")),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  _onSelect(2);
                },
                child: Icon(Icons.add)),
            UserAccountsDrawerHeader(
              accountName: Text("Sujeto de prueba"),
              accountEmail: Text("sujetodp@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 105, 86, 35),
                  child: Text("sdp", style: TextStyle(fontSize: 30.0))),
            ),
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
