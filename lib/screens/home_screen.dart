import 'package:flutter/material.dart';
import 'package:freshfruits/styles/spacing.dart';
import 'package:freshfruits/widgets/home/categories_hoz_list.dart';
import 'package:freshfruits/widgets/home/recepiecs_horz_list.dart';
import 'package:freshfruits/widgets/home/top_section.dart';
import 'package:freshfruits/widgets/home/trending_deals_list.dart';
import 'package:freshfruits/widgets/ui/bottom_navbar.dart';
import 'package:freshfruits/widgets/ui/buttons/long_black_button.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          // padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(children: [
        const TopSection(),
        RecepicesHorzList(),
        CategoriesHozList(),
        TrendingDealsList(),
        const SizedBox(height: 28),
        Container(
          padding: pagePadding,
          child: const LongBlackButton(label: "More"),
        ),
        const SizedBox(height: 28),
      ])),
      bottomNavigationBar: const BottomNavbar(
        selectedIndex: 0,
      ),
    );
  }
}
