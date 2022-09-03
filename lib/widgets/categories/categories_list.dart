import 'package:flutter/material.dart';
import 'package:freshfruits/providers/categories_provider.dart';
import 'package:freshfruits/screens/single_category_screen.dart';
import 'package:freshfruits/styles/colors.dart';

class CategoriesList extends StatelessWidget {
  late List<Map<String, Object>> categoriesList;

  CategoriesList({super.key}) {
    final categoriesListData = CategoriesListProvider();
    categoriesList = categoriesListData.getAllCategoriesList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
      child: GridView.builder(
        // scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // childAspectRatio: 1,
          crossAxisCount: 2,
          mainAxisSpacing: 24,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (ctx, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(SingleCategoryScreen.routeName);
          },
          child: CategoriesListCard(
            categoryImage: categoriesList[index]["img"] as String,
            categoryName: categoriesList[index]["name"] as String,
            categoryQuantity: categoriesList[index]["quantity"] as int,
          ),
        ),
        itemCount: categoriesList.length,
      ),
    );
  }
}

class CategoriesListCard extends StatelessWidget {
  final String categoryName;
  final String categoryImage;
  final int categoryQuantity;
  const CategoriesListCard({
    super.key,
    required this.categoryName,
    required this.categoryImage,
    required this.categoryQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(categoryImage),
            const SizedBox(height: 8),
            Text(
              categoryName,
              style: const TextStyle(
                color: mainColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 1),
            Text(
              '${categoryQuantity.toString()} Items',
              style: const TextStyle(
                color: mainColor,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ));
  }
}
