import 'package:flutter/material.dart';

class LongBlackButton extends StatelessWidget {
  final String label;
  final dynamic? onPressed;
  const LongBlackButton({super.key, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // margin: const EdgeInsets.symmetric(horizontal: 28),
      child: ElevatedButton(
        onPressed: onPressed != null ? onPressed : () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        child: Text(label.toUpperCase()),
      ),
    );
  }
}
