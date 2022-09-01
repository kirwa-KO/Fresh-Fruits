
import 'package:flutter/material.dart';
import 'package:freshfruits/styles/colors.dart';

class DealCard extends StatelessWidget {
  final String dealImage;
  final String dealName;
  final double dealprice;
  final bool isFavoriteDeal;

  const DealCard({
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
