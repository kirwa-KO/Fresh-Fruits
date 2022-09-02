import 'package:flutter/material.dart';

class WriteReviewHeader extends StatelessWidget {
  const WriteReviewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Tell Us to Improve",
          style: Theme.of(context).textTheme.headline1,
        ),
        const SizedBox(height: 10),
        const Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
