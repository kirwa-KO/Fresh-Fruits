import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class StepsBars extends StatelessWidget {
  final int activeIndex;
  const StepsBars({super.key, required this.activeIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _Bar(isActive: activeIndex == 1 ? true : false),
        _Bar(isActive: activeIndex == 2 ? true : false),
        _Bar(isActive: activeIndex == 3 ? true : false),
      ],
    );
  }
}

class _Bar extends StatelessWidget {
  final bool isActive;

  _Bar({this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: 24,
      child: null,
      decoration: BoxDecoration(
          color: isActive ? HexColor("#12B76A") : HexColor("#F2F2F2"),
          borderRadius: BorderRadius.circular(5)),
      margin: const EdgeInsets.only(left: 8, right: 8),
    );
  }
}
