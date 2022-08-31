import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  final String label;
  const LongButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // margin: const EdgeInsets.symmetric(horizontal: 28),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(label),
        // style: ElevatedButton.styleFrom(
        //     backgroundColor: Theme.of(context).primaryColor),
      ),
    );
  }
}
