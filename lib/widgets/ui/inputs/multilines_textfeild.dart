import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MultilinesTextfeild extends StatelessWidget {
  final String hint;
  const MultilinesTextfeild({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 6,
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        hintText: hint,
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
    );
  }
}
