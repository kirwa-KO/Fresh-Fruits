import 'package:flutter/material.dart';

class ImageBgContentCardLayout extends StatelessWidget {
  final dynamic child;
  final String imageBg;
  const ImageBgContentCardLayout(
      {super.key, required this.child, required this.imageBg});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imageBg),
            fit: BoxFit.contain,
            alignment: Alignment.topLeft),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 28),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
