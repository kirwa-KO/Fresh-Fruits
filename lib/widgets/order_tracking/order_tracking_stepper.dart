import 'package:flutter/material.dart';
import 'package:freshfruits/styles/colors.dart';

class OrderTrackingStepper extends StatefulWidget {
  const OrderTrackingStepper({super.key});

  @override
  State<OrderTrackingStepper> createState() => _OrderTrackingStepperState();
}

class _OrderTrackingStepperState extends State<OrderTrackingStepper> {
  int _currentStep = 1;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: StepperType.vertical,
      currentStep: _currentStep,
      onStepTapped: (step) => tapped(step),
      onStepContinue: continued,
      physics: ScrollPhysics(),
      onStepCancel: cancel,
      controlsBuilder: (context, details) {
        return Container(child: null,);
      },
      steps: [
        stepCard("Step 1", "Make Order", context, StepState.complete, true),
        stepCard("Step 2", "Ship Items", context, StepState.indexed, true),
        stepCard("Step 3", "Make Review", context, StepState.disabled, false),
      ],
    );
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }

  Step stepCard(
      String header, String desc, BuildContext ctx, StepState state, bool isActive) {
    return (Step(
        title: Row(
          children: [
            Text(
              header,
              style: Theme.of(ctx).textTheme.headline1,
            ),
            Text(
              " : $desc",
              style: const TextStyle(
            fontSize: 20,
            color: grayColor,
            fontWeight: FontWeight.w600,
          ),
            ),
          ],
        ),
        content: const Text(
          "Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod",
          style: TextStyle(fontSize: 16),
        ),
        state: state,
        isActive: isActive));
  }
}
