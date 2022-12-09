import 'package:flutter/material.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class addNotes extends StatefulWidget {
  @override
  State<addNotes> createState() => _addNotesState();
}

// ignore: camel_case_types
class _addNotesState extends State<addNotes> {
  final notas = TextEditingController();

  String notes = "";

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          margin: const EdgeInsets.symmetric(horizontal: 50),
          child: TextFormField(
            controller: notas,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            decoration: const InputDecoration(hintText: "¿Algo que agregar?"),
          ))
    ]);
  }
}
