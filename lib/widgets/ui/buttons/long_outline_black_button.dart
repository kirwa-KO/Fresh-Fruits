import 'package:flutter/material.dart';

class LongOutlineBlackButton extends StatelessWidget {
  final String label;
  const LongOutlineBlackButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // margin: const EdgeInsets.symmetric(horizontal: 28),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          side: const BorderSide(width: 2, color: Colors.black)
        ),
        child: Text(label),
      ),
    );
  }
}
