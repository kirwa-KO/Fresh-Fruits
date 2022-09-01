import 'package:flutter/material.dart';

class CreateAccountForm extends StatelessWidget {
  const CreateAccountForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      SizedBox(height: 40),
      TextField(
        decoration: InputDecoration(labelText: "Full Name"),
      ),
      SizedBox(height: 16),
      TextField(
        decoration: InputDecoration(labelText: "Email"),
      ),
      SizedBox(height: 16),
      TextField(
        decoration: InputDecoration(labelText: "Password"),
        obscureText: true,
      ),
      SizedBox(height: 16)
    ]);
  }
}
