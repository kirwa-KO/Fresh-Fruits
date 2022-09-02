import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WriteReviewForm extends StatelessWidget {
  const WriteReviewForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Let us know what you think", style: Theme.of(context).textTheme.headline1,),
        const SizedBox(height: 10),
        TextField(
          maxLines: 8,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            alignLabelWithHint: true,
            hintText: "Write your review here",
            // labelText: "Let us know what you think",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(color: HexColor("#E67F1E"), width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(color: HexColor("#E67F1E"), width: 1),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            labelStyle: TextStyle(color: HexColor("#9C9F9E")),
          ),
        )
      ],
    );
  }
}
