import 'package:flutter/material.dart';
import 'package:freshfruits/screens/auth/create_account.dart';
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
        primaryColor: HexColor("#E67F1E"),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: HexColor("#FEC54B"),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: HexColor("#FEC54B"),
          ),
        ),
        textTheme: const TextTheme(
          button: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          headline1: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            // backgroundColor: Colors.red
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: HexColor("#E67F1E"), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: HexColor("#E67F1E"), width: 2),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          labelStyle: TextStyle(color: HexColor("#9C9F9E")),
        ),
        textSelectionTheme:
            TextSelectionThemeData(cursorColor: HexColor("#E67F1E")),
      ),
      home: const CreateAccount(),
      routes: {
        OnboardingFirst.routeName: (ctx) => const OnboardingFirst(),
        OnboardingSecond.routeName: (ctx) => const OnboardingSecond(),
        OnboardingThird.routeName: (ctx) => const OnboardingThird(),
        OnboardingFourth.routeName: (ctx) => const OnboardingFourth(),
        CreateAccount.routeName: (ctx) => const CreateAccount(),
      },
    );
  }
}