import 'package:flutter/material.dart';

import 'package:prueba/Screens/studen.dart';

import 'Configuraciones.dart';
import 'addRecetas.dart';
import 'mensaje.dart';

String valor = "";

class ListaDeNombreScreen extends StatefulWidget {
  const ListaDeNombreScreen([Key? key]) : super(key: key);

  @override
  State<ListaDeNombreScreen> createState() => _ListaDeNombreScreenState();
}

class _ListaDeNombreScreenState extends State<ListaDeNombreScreen> {
  int _select = 0;

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
      appBar: AppBar(
        title: const Center(child: Text("Recipify")),
        backgroundColor: Color(0XFF506D2F),
      ),
      backgroundColor: Color(0xffF3EBDD),
      drawer: Drawer(
        backgroundColor: Color(0xffF3EBDD),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: const Text("Recetas"),
              leading: const Icon(Icons.book),
              selected: (0 == _select),
              onTap: () {
                _onSelect(0);
              },
            ),
            ListTile(
              title: const Text("Configuraciones"),
              leading: const Icon(Icons.build_circle),
              selected: (1 == _select),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Configuraciones(),
                ));
              },
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: const [],
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
                                  offset: const Offset(0, 3))
                            ],
                            color: Color(0XFF7D5642),
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.all(20),
                        //color: Colors.lightBlue,
                        child: ListTile(
                          leading:
                              SizedBox(child: Image.asset('assets/Pozole.jpg')),
                          trailing: IconButton(
                              color: Color(0XFFF3EBDD),
                              onPressed: () {
                                setState(() {
                                  listaDeNombres.remove(nombre);
                                  final snackBar = SnackBar(
                                    content: Text(
                                      "¡Receta para  $nombre eliminada!",
                                    ),
                                    action: SnackBarAction(
                                      label: 'Undo',
                                      textColor: Color(0XFFF3EBDD),
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
            builder: (context) => const MyHomePage(),
          ));
        },
        tooltip: 'Increment',
        child: const Icon(
          Icons.add,
          color: Color(0XFFF3EBDD),
        ),
      ),
    );
  }
}
