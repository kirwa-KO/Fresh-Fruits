import 'package:flutter/material.dart';
import 'package:freshfruits/styles/spacing.dart';

class SingleCategoryTopSection extends StatelessWidget {
  const SingleCategoryTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Fruits Category",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("87 Items",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              )),
        ],
      ),
    );
  }
}
