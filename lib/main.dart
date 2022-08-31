import 'package:flutter/material.dart';
import 'package:freshfruits/screens/onboarding/onboarding_first.dart';
import 'package:freshfruits/screens/onboarding/onboarding_fourth.dart';
import 'package:freshfruits/screens/onboarding/onboarding_second.dart';
import 'package:freshfruits/screens/onboarding/onboarding_third.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fresh Fruits',
      theme: ThemeData(
          fontFamily: "Poppins",
          primarySwatch: Colors.blue,
          primaryColor: HexColor("#FEC54B"),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                primary: HexColor("#FEC54B"),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          textTheme: const TextTheme(
              button: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
              // headline1: TextStyle(
              //   fontSize: 38,
              //   color: Colors.white,
              //   fontWeight: FontWeight.bold,
              // ),
              )),
      home: const OnboardingFourth(),
      routes: {
        OnboardingFirst.routeName: (ctx) => const OnboardingFirst(),
        OnboardingSecond.routeName: (ctx) => const OnboardingSecond(),
        OnboardingThird.routeName: (ctx) => const OnboardingThird(),
        OnboardingFourth.routeName: (ctx) => const OnboardingFourth(),
      },
    );
  }
}
