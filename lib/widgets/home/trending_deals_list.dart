import 'package:flutter/material.dart';
import 'package:freshfruits/providers/deals_provider.dart';
import 'package:freshfruits/styles/colors.dart';
import 'package:freshfruits/styles/spacing.dart';

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
            itemBuilder: (ctx, index) => TrendingDealCard(
              dealImage: deals[index]["img"] as String,
              dealName: deals[index]["name"] as String,
              dealprice: deals[index]["price"] as double,
              isFavoriteDeal: deals[index]["isFavorite"] as bool,
            ),
            itemCount: deals.length,
          ),
        ),
      ],
    );
  }
}

class TrendingDealCard extends StatelessWidget {
  final String dealImage;
  final String dealName;
  final double dealprice;
  final bool isFavoriteDeal;

  const TrendingDealCard({
    super.key,
    required this.dealImage,
    required this.dealName,
    required this.dealprice,
    required this.isFavoriteDeal,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
            image: AssetImage(dealImage),
            fit: BoxFit.cover,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.favorite,
            color: isFavoriteDeal == true ? pinkColor : Colors.white,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dealName,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600),
              ),
              Text(
                '\$${dealprice.toString()}',
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
