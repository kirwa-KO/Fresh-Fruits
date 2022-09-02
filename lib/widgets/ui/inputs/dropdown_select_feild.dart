import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DropdownSelectFeild extends StatefulWidget {
  final List<String> options;
  const DropdownSelectFeild({super.key, required this.options});

  @override
  State<DropdownSelectFeild> createState() => _DropdownFeildState();
}

class _DropdownFeildState extends State<DropdownSelectFeild> {
  late String dropdownValue;

  @override
  void initState() {
    dropdownValue = widget.options.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(
          color: HexColor("#CACACA"),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      width: double.infinity,
      child: DropdownButton(
        value: dropdownValue,
        underline: DropdownButtonHideUnderline(child: Container()),
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        isExpanded: true,
        onChanged: (String? value) {
          setState(() {
            dropdownValue = value!;
          });
        },
        items: widget.options.map<DropdownMenuItem<String>>((String option) {
          return DropdownMenuItem<String>(
            value: option,
            child: Text(option),
          );
        }).toList(),
      ),
    );
  }
}
