import 'package:flutter/material.dart';
import 'package:freshfruits/screens/onboarding/onboarding_fourth.dart';
import 'package:freshfruits/widgets/Onboarding/step_content.dart';
import 'package:freshfruits/widgets/layout/layout_depend_on_mode.dart';
import 'package:freshfruits/widgets/ui/buttons/long_button.dart';

class OnboardingThird extends StatelessWidget {
  static const String routeName = "/onboarding_third";

  const OnboardingThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutDependOnMode(
        child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/images/onboarding/step2.png"),
                const SizedBox(height: 40),
                const StepContent(
                    stepNumber: 2,
                    header: "We provide best quality Fruits to your family",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed "),
                const SizedBox(height: 40),
                LongButton(
                    label: "NEXT",
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(OnboardingFourth.routeName);
                    }),
                const SizedBox(height: 40)
              ],
            )),
      ),
    );
  }
}
