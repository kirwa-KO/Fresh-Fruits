import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  final dynamic child;
  final String imageBg;
  const AuthLayout({super.key, required this.child, required this.imageBg});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(imageBg), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 28),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: child,
          ),
        ],
      ),
    );
  }
}
