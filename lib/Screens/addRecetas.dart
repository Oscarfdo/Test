// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:prueba/Screens/terminar.dart';
import 'addFoto.dart';
import 'addIng.dart';
import 'addNotes.dart';
import 'addSteps.dart';
import 'terminar.dart';
import 'builCompleted.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentStep = 0;
  bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(child: Text("Recipify")),
            backgroundColor: Color(0XFF506D2F)),
        backgroundColor: Color(0xffF3EBDD),
        body: isCompleted
            ? buildCompleted()
            : Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: ColorScheme.light(primary: Color(0XFF2A2922)),
                ),
                child: Stepper(
                  steps: getSteps(),
                  currentStep: _currentStep,
                  onStepContinue: () {
                    final isLastStep = _currentStep == getSteps().length - 1;

                    if (isLastStep) {
                      setState(() => isCompleted = true);
                      print('complete');
                      // Aquí va el proceso de data
                    } else {
                      setState(() => _currentStep += 1);
                    }
                  },
                  onStepCancel: _currentStep == 0
                      ? null
                      : () => setState(() => _currentStep -= 1),
                  onStepTapped: (step) => setState(() => _currentStep = step),
                  controlsBuilder: (context, details) {
                    final isLastStep = _currentStep == getSteps().length - 1;
                    return Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              child: Text(isLastStep ? 'Seguro' : 'Siguiente'),
                              onPressed: details.onStepContinue,
                            ),
                          ),
                          const SizedBox(width: 6),
                          if (_currentStep != 0)
                            Expanded(
                              child: ElevatedButton(
                                child: Text('Atrás'),
                                onPressed: details.onStepCancel,
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                  // ignore: prefer_const_literals_to_create_immutables
                ),
              ));
  }

  List<Step> getSteps() => [
        Step(
          state: _currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: _currentStep >= 0,
          title: Text('Introduzca foto'),
          content: addFoto(),
        ),
        Step(
          state: _currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: _currentStep >= 1,
          title: Text("Introduzca Ingredientes"),
          content: addIng(),
        ),
        Step(
            state: _currentStep > 2 ? StepState.complete : StepState.indexed,
            isActive: _currentStep >= 2,
            title: Text("Introduzca Pasos"),
            content: addSteps()),
        Step(
            state: _currentStep > 3 ? StepState.complete : StepState.indexed,
            isActive: _currentStep >= 3,
            title: Text("Notas"),
            content: addNotes()),
        Step(
            state: _currentStep > 3 ? StepState.complete : StepState.indexed,
            isActive: _currentStep > 4,
            title: Text('Terminemos de añadir'),
            content: Column(
              children: <Widget>[Text('¿Estás seguro que es todo?')],
            ))
      ];
}
