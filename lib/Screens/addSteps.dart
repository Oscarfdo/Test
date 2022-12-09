// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class addSteps extends StatefulWidget {
  const addSteps({Key? key}) : super(key: key);

  @override
  State<addSteps> createState() => _addStepsState();
}

// ignore: camel_case_types
class _addStepsState extends State<addSteps> {
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
                hintText: "¿Cómo se prepara tu platillo?"),
          ))
    ]);
  }
}
