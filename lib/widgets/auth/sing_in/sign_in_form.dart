import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children:  [
      const SizedBox(height: 40),
      const TextField(
        decoration: InputDecoration(labelText: "Email"),
      ),
      const SizedBox(height: 16),
      const TextField(
        decoration: InputDecoration(labelText: "Password"),
        obscureText: true,
      ),
      const SizedBox(height: 4),
      TextButton(onPressed: () {}, child: const Text("Forgot Password?")),
      const SizedBox(height: 8),
    ]);
  }
}
