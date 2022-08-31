import 'package:flutter/material.dart';
import 'package:freshfruits/widgets/Onboarding/steps_bars.dart';

class StepContent extends StatelessWidget {
  final int stepNumber;
  final String header;
  final String subHeader;
  final String description;

  const StepContent({super.key, required this.stepNumber, this.subHeader = "", required this.description, required this.header});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          header,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        if (subHeader != "")
        Text(
          subHeader,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        StepsBars(activeIndex: stepNumber,)
      ],
    );
  }
}
