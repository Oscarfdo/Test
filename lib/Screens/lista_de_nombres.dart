import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:prueba/Screens/studen.dart';

import 'Configuraciones.dart';
import 'Recetas.dart';
import 'addRecetas.dart';
import 'mensaje.dart';

String valor = "";

class ListaDeNombreScreen extends StatefulWidget {
  ListaDeNombreScreen([Key? key]) : super(key: key);

  @override
  State<ListaDeNombreScreen> createState() => _ListaDeNombreScreenState();
}

class _ListaDeNombreScreenState extends State<ListaDeNombreScreen> {
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

  final List<String> listaDeNombres = [
    "Mole",
    "Pozole",
    "Menudo",
    "Caldo de pollo",
  ];

  final student1 = Student(name: 'jose', age: 20, career: Career.mechatronics);

  @override
  Widget build(BuildContext context) {
    listaDeNombres.sort();
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Recipify"))),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
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
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Configuraciones(),
                ));
              },
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [],
          ),
          Expanded(
            child: ListView(
              children: listaDeNombres
                  .map(
                    (nombre) => Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3))
                            ],
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.all(20),
                        //color: Colors.lightBlue,
                        child: ListTile(
                          leading:
                              SizedBox(child: Image.asset('assets/Pozole.jpg')),
                          trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  listaDeNombres.remove(nombre);
                                  final snackBar = SnackBar(
                                    content: Text(
                                      "¡Receta para  $nombre eliminada!",
                                    ),
                                    action: SnackBarAction(
                                      label: 'Undo',
                                      onPressed: () {
                                        // Some code to undo the change.
                                        setState(() {
                                          listaDeNombres.add(nombre);
                                        });
                                      },
                                    ),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                });
                              },
                              icon: const Icon(Icons.delete)),
                          title: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(nombre),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          LongitudDelista(
            listaDeNombres.length,
            colorNegro: true,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
