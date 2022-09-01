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

class CategoriesListProvider {
  final List<Map<String, Object>> _categoriesList = [
    {
      "name": "Fruits",
      "img": "assets/images/categories/list/category1.png",
      "quantity": 87,
    },
    {
      "name": "Vegetables",
      "img": "assets/images/categories/list/category2.png",
      "quantity": 24,
    },
    {
      "name": "Mushroom",
      "img": "assets/images/categories/list/category3.png",
      "quantity": 53,
    },
    {
      "name": "Dairy",
      "img": "assets/images/categories/list/category4.png",
      "quantity": 43,
    },
    {
      "name": "Oats",
      "img": "assets/images/categories/list/category5.png",
      "quantity": 12,
    },
    {
      "name": "Bread",
      "img": "assets/images/categories/list/category6.png",
      "quantity": 33,
    },
    {
      "name": "Rice",
      "img": "assets/images/categories/list/category7.png",
      "quantity": 36,
    },
    {
      "name": "Egg",
      "img": "assets/images/categories/list/category8.png",
      "quantity": 69,
    },
  ];

  List<Map<String, Object>> get categoriesList {
    return [..._categoriesList];
  }

  List<Map<String, Object>> getAllCategoriesList() {
    return categoriesList;
  }
}
