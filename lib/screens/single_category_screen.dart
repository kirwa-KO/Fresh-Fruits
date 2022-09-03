import 'package:flutter/material.dart';
import 'package:freshfruits/styles/colors.dart';
import 'package:freshfruits/widgets/single_category/single_category_content.dart';
import 'package:freshfruits/widgets/single_category/single_category_top_section.dart';
import 'package:freshfruits/widgets/ui/bottom_navbar.dart';

class SingleCategoryScreen extends StatelessWidget {
  static const String routeName = "/single-category";

  const SingleCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellowColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
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
        const SingleCategoryTopSection(),
        const SizedBox(height: 32),
        SingleCategoryContent(),
      ]),
      bottomNavigationBar: const BottomNavbar(
        selectedIndex: 1,
      ),
    );
  }
}
