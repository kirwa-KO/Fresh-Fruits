import 'package:flutter/material.dart';
import 'package:freshfruits/screens/auth/create_account.dart';
import 'package:freshfruits/screens/auth/sign_in.dart';
import 'package:freshfruits/widgets/Onboarding/step_content.dart';
import 'package:freshfruits/widgets/layout/layout_depend_on_mode.dart';
import 'package:freshfruits/widgets/ui/buttons/long_black_button.dart';
import 'package:freshfruits/widgets/ui/buttons/long_outline_black_button.dart';

class OnboardingFourth extends StatelessWidget {
  static const String routeName = "/onboarding_fourth";

  const OnboardingFourth({super.key});

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
                Image.asset("assets/images/onboarding/step3.png"),
                const SizedBox(height: 40),
                const StepContent(
                    stepNumber: 3,
                    header: "Fast and responsibily delivery by our courir ",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor"),
                const SizedBox(height: 40),
                LongBlackButton(
                    label: "Create an account",
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(CreateAccount.routeName);
                    }),
                const SizedBox(height: 16),
                LongOutlineBlackButton(label: "Login",
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(SignIn.routeName);
                    }),
                const SizedBox(height: 40)
              ],
            )),
      ),
    );
  }
}
