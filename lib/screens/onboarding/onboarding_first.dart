import 'dart:async';

import "package:flutter/material.dart";
import 'package:freshfruits/screens/onboarding/onboarding_second.dart';
import 'package:hexcolor/hexcolor.dart';

class OnboardingFirst extends StatefulWidget {
  static const String routeName = "/onboarding_first";

  const OnboardingFirst({super.key});

  @override
  State<OnboardingFirst> createState() => _OnboardingFirstState();
}

class _OnboardingFirstState extends State<OnboardingFirst> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 800), () {
      Navigator.of(context).pushReplacementNamed(OnboardingSecond.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FEC54B"),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(bottom: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
            const SizedBox(height: 24),
            const Text(
              "Fresh Fruits",
              style: TextStyle(
                fontSize: 38,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
