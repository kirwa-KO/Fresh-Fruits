import 'package:flutter/material.dart';
import 'package:freshfruits/styles/colors.dart';
import 'package:hexcolor/hexcolor.dart';

class CheckoxFeild extends StatefulWidget {
  final String label;
  const CheckoxFeild({super.key, required this.label});

  @override
  State<CheckoxFeild> createState() => _CheckoxFeildState();
}

class _CheckoxFeildState extends State<CheckoxFeild> {
  bool isChecked = true;

  void _onChangeCheckbox(bool? value) {
    setState(() {
      isChecked = value!;
    });
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return HexColor("#12B76A");
    }
    return HexColor("#12B76A");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Transform.scale(
          scale: 1.2,
          child: Checkbox(
            checkColor: whiteColor,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: isChecked,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            onChanged: _onChangeCheckbox,
          ),
        ),
        Text(
          widget.label,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
