import 'package:flutter/material.dart';
import 'package:freshfruits/providers/deals_provider.dart';
import 'package:freshfruits/screens/single_category_screen.dart';
import 'package:freshfruits/styles/colors.dart';
import 'package:freshfruits/styles/spacing.dart';
import 'package:freshfruits/widgets/ui/deal_card.dart';

class TrendingDealsList extends StatelessWidget {
  late List<Map<String, Object>> deals;

  TrendingDealsList({super.key}) {
    final dealsData = DealsProvider();
    deals = dealsData.getAllDeals();
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
                "Trending Deals",
                style: Theme.of(context).textTheme.headline2,
              ),
              const Icon(Icons.arrow_forward_ios_rounded),
            ],
          ),
        ),
        const SizedBox(height: 14),
        Container(
          height: 420,
          width: double.infinity,
          padding: pagePadding,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 199 / 150,
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemBuilder: (ctx, index) => GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(SingleCategoryScreen.routeName);
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
          ),
        ),
      ],
    );
  }
}
