import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  const StepperDemo({super.key});

  final String title = "Stepper Demo";

  @override
  StepperDemoState createState() => StepperDemoState();
}

class StepperDemoState extends State<StepperDemo> {
  //
  int current_step = 0;
  List<Step> steps = [
    const Step(
      title: Text('Step 1'),
      content: Text('packing!'),
      isActive: true,
    ),
    const Step(
      title: Text('Step 2'),
      content: Text('Shipping!'),
      isActive: true,
    ),
    const Step(
      title: Text('Step 3'),
      content: Text('Arriving!'),
      state: StepState.complete,
      isActive: true,
    ),
    const Step(
      title: Text('Step 4'),
      content: Text('Scusses!'),
      state: StepState.complete,
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: const Text("Simple Stepper Demo"),
      ),
      // Body
      body: Container(
        child: Stepper(
          currentStep: current_step,
          steps: steps,
          type: StepperType.vertical,
          onStepTapped: (step) {
            setState(() {
              current_step = step;
            });
          },
          onStepContinue: () {
            setState(() {
              if (current_step < steps.length - 1) {
                current_step = current_step + 1;
              } else {
                current_step = 0;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (current_step > 0) {
                current_step = current_step - 1;
              } else {
                current_step = 0;
              }
            });
          },
        ),
      ),
    );
  }
}
