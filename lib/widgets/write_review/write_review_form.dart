import 'package:flutter/material.dart';
import 'package:freshfruits/screens/home_screen.dart';
import 'package:freshfruits/widgets/ui/buttons/long_button.dart';
import 'package:freshfruits/widgets/ui/inputs/multilines_textfeild.dart';

class WriteReviewForm extends StatelessWidget {
  const WriteReviewForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Let us know what you think",
          style: Theme.of(context).textTheme.headline1,
        ),
        const SizedBox(height: 10),
        const MultilinesTextfeild(hint: "Write your review here"),
        const SizedBox(height: 18),
        LongButton(
          label: "Done",
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
          },
        )
      ],
    );
  }
}
