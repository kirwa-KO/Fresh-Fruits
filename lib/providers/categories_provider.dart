
class CategoriesProvider {
  final List<String> _categories = [
    "assets/images/categories/category1.png",
    "assets/images/categories/category2.png",
    "assets/images/categories/category3.png",
    "assets/images/categories/category4.png",
    "assets/images/categories/category1.png",
    "assets/images/categories/category2.png",
    "assets/images/categories/category3.png",
    "assets/images/categories/category4.png",
    ];

  get categories {
    return [..._categories];
  }

  List<String> getAllCategories() {
    return categories;
  }
}
