import 'package:flutter/material.dart';

// ignore: camel_case_types
class addIng extends StatefulWidget {
  const addIng({super.key});

  @override
  State<addIng> createState() => _addIngState();
}

// ignore: camel_case_types
class _addIngState extends State<addIng> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          margin: const EdgeInsets.symmetric(horizontal: 50),
          child: TextFormField(
            maxLines: null,
            keyboardType: TextInputType.multiline,
            decoration: const InputDecoration(
                hintText: "¿Qué ingredientes lleva tu platillo?"),
          ))
    ]);
  }
}
