import 'package:flutter/material.dart';
import 'package:freshfruits/styles/spacing.dart';

class SingleCategoryTopSection extends StatelessWidget {
  final String? title;
  final String? itemsNumber;
  const SingleCategoryTopSection({super.key, this.title, this.itemsNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "Fruits Category",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(itemsNumber ?? "87 Items",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              )),
        ],
      ),
    );
  }
}
