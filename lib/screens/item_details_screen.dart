import 'package:flutter/material.dart';
import 'package:freshfruits/widgets/item_details/item_details_top_section.dart';
import 'package:freshfruits/widgets/layout/my_custom_scroll_view.dart';
import 'package:freshfruits/widgets/ui/bottom_navbar.dart';

class ItemDetailsScreen extends StatelessWidget {
  static const String routeName = "/item-details";

  const ItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/backgrounds/item-details.png"),
            fit: BoxFit.contain,
            alignment: Alignment.topLeft),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            elevation: 0,
            backgroundColor: Colors.white.withOpacity(0),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
          body: MyCustomScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 28),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        ItemDetailsTopSection(),
                      ]),
                ),
              ],
            ),
          ),
          bottomNavigationBar: const BottomNavbar(
            selectedIndex: 2,
          )),
    );
  }
}
