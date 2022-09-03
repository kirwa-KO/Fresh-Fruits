import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OutlinedGreyTextfeild extends StatelessWidget {
  final String label;
  final String? hint;

  const OutlinedGreyTextfeild({super.key, required this.label, this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          hintText: hint,
      labelText: label,
      alignLabelWithHint: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: HexColor("#CACACA"), width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: HexColor("#E67F1E"), width: 1),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      labelStyle: TextStyle(color: HexColor("#9C9F9E")),
    ));
  }
}
