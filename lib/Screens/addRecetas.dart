import 'package:flutter/material.dart';

import 'addFoto.dart';
import 'addIng.dart';
import 'addNotes.dart';
import 'addSteps.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: Center(child: Text("Recetas"))),
            body: Stepper(
                currentStep: _currentStep,
                onStepContinue: () {
                  if (_currentStep >= 3) return;
                  setState(() {
                    _currentStep++;
                  });
                },
                onStepCancel: () {
                  if (_currentStep <= 0) return;
                  setState(() {
                    _currentStep--;
                  });
                },
                steps: [
                  Step(title: Text("Introduzca foto"), content: addFoto()),
                  Step(
                      title: Text("Introduzca Ingredientes"),
                      content: addIng()),
                  Step(title: Text("Introduzca Pasos"), content: addSteps()),
                  Step(title: Text("Notas"), content: addNotes()),
                ])));
  }
}
