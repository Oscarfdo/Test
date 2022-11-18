import 'package:flutter/material.dart';

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
          Step(
              title: Text("Introduzca foto"),
              content: SizedBox(
                width: 110,
                height: 110,
              )),
          Step(
              title: Text("Introduzca Ingredientes"),
              content: SizedBox(
                width: 110,
                height: 110,
              )),
          Step(
              title: Text("Introduzca Pasos"),
              content: SizedBox(
                width: 110,
                height: 110,
              )),
          Step(
              title: Text("Notas"),
              content: SizedBox(
                width: 110,
                height: 110,
              )),
        ])));
  }
}
