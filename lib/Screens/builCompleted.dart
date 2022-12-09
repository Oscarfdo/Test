import 'package:flutter/material.dart';
import 'package:prueba/Screens/lista_de_nombres.dart';
import 'lista_de_nombres.dart';

class buildCompleted extends StatefulWidget {
  const buildCompleted({super.key});

  @override
  State<buildCompleted> createState() => _buildCompletedState();
}

class _buildCompletedState extends State<buildCompleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF3EBDD),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Center(
                child: Icon(
              Icons.thumb_up,
              size: 200,
              color: Color(0XFF2A2922),
            )),
            const Text(
              "¡Se guardó la receta!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            Text(""),
            MaterialButton(
              minWidth: 200.0,
              height: 40.0,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ListaDeNombreScreen(),
                ));
              },
              color: Color(0XFF2A2922),
              child: Text('Ver Recetas', style: TextStyle(color: Colors.white)),
            ),
          ],
        ));
  }
}
