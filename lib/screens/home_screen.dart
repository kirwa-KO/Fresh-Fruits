import 'package:flutter/material.dart';
import 'package:freshfruits/widgets/home/categories_hoz_list.dart';
import 'package:freshfruits/widgets/home/recepiecs_horz_list.dart';
import 'package:freshfruits/widgets/home/top_section.dart';
import 'package:freshfruits/widgets/home/trending_deals_list.dart';
import 'package:freshfruits/widgets/ui/bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          // padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              const TopSection(),
              RecepicesHorzList(),
              CategoriesHozList(),
              TrendingDealsList(),
            ]
          )),
      bottomNavigationBar: const BottomNavbar(
        selectedIndex: 0,
      ),
    );
  }
}
