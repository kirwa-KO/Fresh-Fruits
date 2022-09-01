import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  final String label;
  final dynamic onPressed;
  
  const LongButton({super.key, required this.label, this.onPressed = null});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // margin: const EdgeInsets.symmetric(horizontal: 28),
      child: ElevatedButton(
        onPressed: onPressed != null ? onPressed : () {},
        child: Text(label),
      ),
    );
  }
}
