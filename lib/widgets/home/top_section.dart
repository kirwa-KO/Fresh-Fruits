import 'package:flutter/material.dart';
import 'package:freshfruits/styles/colors.dart';
import 'package:freshfruits/styles/spacing.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const Text(
            "Good Morning",
            style: TextStyle(color: lightGrayColor, fontSize: 14),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Imran Baali",
                style: Theme.of(context).textTheme.headline1,
              ),
              Stack(children: [
                const Icon(
                  Icons.notifications,
                  color: lightDarkColor,
                ),
                Positioned(
                  top: 0.0,
                  right: 0,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 2),
                        color: yellowColor),
                    child: null,
                  ),
                )
              ])
            ],
          )
        ],
      ),
    );
  }
}
