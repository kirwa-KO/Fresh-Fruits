import 'package:flutter/material.dart';
import 'package:freshfruits/styles/colors.dart';
import 'package:freshfruits/widgets/single_category/single_category_content.dart';
import 'package:freshfruits/widgets/single_category/single_category_top_section.dart';
import 'package:freshfruits/widgets/ui/bottom_navbar.dart';

class FavoriteItemsScreen extends StatelessWidget {
  static const String routeName = "/favorite-items";

  const FavoriteItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pinkColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SingleCategoryTopSection(itemsNumber: "6 items", title: "Favorite Items"),
        const SizedBox(height: 32),
        SingleCategoryContent(isForvorites: true),
      ]),
      bottomNavigationBar: const BottomNavbar(
        selectedIndex: 4,
      ),
    );
  }
}
