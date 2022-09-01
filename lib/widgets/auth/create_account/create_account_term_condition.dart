import 'package:flutter/material.dart';

class CreateAccountTermCondition extends StatelessWidget {
  const CreateAccountTermCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "By tapping Sign up you accept all",
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text("terms"),
            ),
            const Text("and"),
            TextButton(onPressed: () {}, child: const Text("condition")),
          ],
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
