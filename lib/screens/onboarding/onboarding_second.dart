import 'package:flutter/material.dart';
import 'package:freshfruits/widgets/Onboarding/step_content.dart';
import 'package:freshfruits/widgets/ui/buttons/long_button.dart';

class OnboardingSecond extends StatelessWidget {
  static const String routeName = "/onboarding_second";

  const OnboardingSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/images/onboarding/step1.png"),
              const SizedBox(height: 40),
              const StepContent(
                  stepNumber: 1,
                  header: "Welcome to Fresh Fruits",
                  subHeader: "Grocery application",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor"),
              const SizedBox(height: 40),
              const LongButton(label: "NEXT"),
              const SizedBox(height: 40)
            ],
          )),
    );
  }
}
