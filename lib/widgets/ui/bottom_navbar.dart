import 'package:flutter/material.dart';
import 'package:freshfruits/screens/categories_screen.dart';
import 'package:freshfruits/screens/favorite_items_screen.dart';
import 'package:freshfruits/screens/home_screen.dart';
import 'package:freshfruits/screens/item_details_screen.dart';
import 'package:freshfruits/screens/shopping_cart_screen.dart';
import 'package:freshfruits/styles/colors.dart';

class BottomNavbar extends StatefulWidget {
  final int selectedIndex;

  const BottomNavbar({super.key, required this.selectedIndex});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    _selectedIndex = widget.selectedIndex;
    super.initState();
  }

  void _onItemTapped(int index) {
    Navigator.of(context).pushNamed(navbarPages[index]);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category_outlined),
          label: "Categories",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket_outlined),
          label: "Orders",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: "Favorites",
        ),
      ],
      selectedItemColor: mainColor,
      unselectedItemColor: grayColor,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}

const List<String> navbarPages = [
  HomeScreen.routeName,
  CategoriesScreen.routeName,
  ItemDetailsScreen.routeName,
  ShoppingCartScreen.routeName,
  FavoriteItemsScreen.routeName,
];
