import 'package:flutter/material.dart';
import 'package:freshfruits/styles/colors.dart';
import 'package:hexcolor/hexcolor.dart';

class GrayTextfield extends StatelessWidget {
  final String label;
  final IconData? icon;
  const GrayTextfield({super.key, required this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Icon(icon, color: HexColor("#898989"),),
        labelText: label,
        filled: true,
        fillColor: HexColor("#F0F0F0"),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(color: HexColor("#F0F0F0"), width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: yellowColor, width: 2),
        ),
      ),
      cursorColor: yellowColor,
    );
  }
}
