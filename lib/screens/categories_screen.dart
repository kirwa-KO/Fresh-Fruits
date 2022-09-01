import 'package:flutter/material.dart';
import 'package:freshfruits/widgets/categories/categories_list.dart';
import 'package:freshfruits/widgets/ui/bottom_navbar.dart';

class CategoriesScreen extends StatelessWidget {
  static const String routeName = "/categories";

  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Categories"),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: CategoriesList(),
      bottomNavigationBar: const BottomNavbar(
        selectedIndex: 1,
      ),
    );
  }
}
