import 'package:flutter/material.dart';
import 'package:freshfruits/providers/deals_provider.dart';
import 'package:freshfruits/screens/item_details_screen.dart';
import 'package:freshfruits/styles/spacing.dart';
import 'package:freshfruits/widgets/ui/deal_card.dart';
import 'package:freshfruits/widgets/ui/inputs/gray_textfield.dart';

class SingleCategoryContent extends StatelessWidget {
  late List<Map<String, Object>> deals;
  final bool? isForFavorites;

  SingleCategoryContent({super.key, this.isForFavorites}) {
    final dealsData = DealsProvider();
    if (isForFavorites != null) {
      deals = dealsData.getFavoritesDeals();
    } else {
      deals = dealsData.getAllDeals();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: pagePadding,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Column(children: [
          const SizedBox(height: 28),
          GrayTextfield(
            label: "Search here",
            icon: Icons.search,
            isForFavorites: isForFavorites,
          ),
          const SizedBox(height: 28),
          Expanded(
              child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 150 / 199,
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemBuilder: (ctx, index) => GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(ItemDetailsScreen.routeName);
              },
              child: DealCard(
                key: UniqueKey(),
                dealImage: deals[index]["img"] as String,
                dealName: deals[index]["name"] as String,
                dealprice: deals[index]["price"] as double,
                isFavoriteDeal: deals[index]["isFavorite"] as bool,
              ),
            ),
            itemCount: deals.length,
          )),
        ]),
      ),
    );
  }
}
