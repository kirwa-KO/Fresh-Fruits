import 'package:flutter/material.dart';
import 'package:freshfruits/styles/colors.dart';
import 'package:freshfruits/widgets/ui/buttons/long_button.dart';
import 'package:freshfruits/widgets/ui/inputs/checkbox_feild.dart';
import 'package:freshfruits/widgets/ui/inputs/dropdown_select_feild.dart';
import 'package:freshfruits/widgets/ui/inputs/outlined_grey_textfeild.dart';
import 'package:hexcolor/hexcolor.dart';

const List<String> countriesList = <String>[
  "United States",
  "United Kingdom",
  "China",
  "Morocco",
];

class ShppingForm extends StatelessWidget {
  final Function nextButton;

  const ShppingForm({super.key, required this.nextButton});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const OutlinedGreyTextfeild(label: "Full Name", hint: "Imran Baali"),
        seperator(),
        const OutlinedGreyTextfeild(
            label: "Email Address", hint: "imran.baali19@gmail.com"),
        seperator(),
        const OutlinedGreyTextfeild(label: "Phone", hint: "+880 1617202070"),
        seperator(),
        const OutlinedGreyTextfeild(
            label: "Address", hint: "Type your home address"),
        seperator(),
        const DropdownSelectFeild(options: countriesList),
        const SizedBox(height: 8),
        const CheckoxFeild(label: "Save shipping address"),
        const SizedBox(height: 8),
        LongButton(label: "NEXT", onPressed: nextButton),
        const SizedBox(height: 32),
      ]),
    );
  }

  Widget seperator() {
    return (const SizedBox(height: 20));
  }
}
