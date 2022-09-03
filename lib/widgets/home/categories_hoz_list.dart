import 'package:flutter/material.dart';
import 'package:freshfruits/providers/categories_provider.dart';
import 'package:freshfruits/screens/categories_screen.dart';
import 'package:freshfruits/styles/spacing.dart';

class CategoriesHozList extends StatelessWidget {
  late List<String> categories;

  CategoriesHozList({super.key}) {
    final categoriesData = CategoriesProvider();
    categories = categoriesData.getAllCategories();
  }

  void _pushedPage(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoriesScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 28),
        Container(
          padding: pagePadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: Theme.of(context).textTheme.headline2,
              ),
              const Icon(Icons.arrow_forward_ios_rounded)
            ],
          ),
        ),
        const SizedBox(height: 14),
        Container(
          height: 73,
          child: ListView.builder(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) => GestureDetector(
              onTap: () {
                _pushedPage(context);
              },
              child: CategoryCard(
                  key: UniqueKey(), categoryImage: categories[index]),
            ),
            itemCount: categories.length,
          ),
        )
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String categoryImage;
  const CategoryCard({super.key, required this.categoryImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      margin: const EdgeInsets.only(right: 10, left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.15),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(4, 0))
          ]),
      child: Image.asset(categoryImage),
    );
  }
}
