import 'package:flutter/material.dart';
import 'package:freshfruits/providers/receipes_provider.dart';
import 'package:freshfruits/screens/single_category_screen.dart';

class RecepicesHorzList extends StatelessWidget {
  late List<Map<String, String>> receipes;

  void _pushRecipeRoute(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(SingleCategoryScreen.routeName);
  }

  RecepicesHorzList({super.key}) {
    final receipesData = ReceipesProvider();
    receipes = receipesData.getAllReceipes();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 24),
        Container(
          height: 162,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) => RecepicesCard(
              recepieImage: receipes[index]["img"]!,
              recepieName: receipes[index]["name"]!,
              pushRecipeRoute: _pushRecipeRoute,
            ),
            itemCount: receipes.length,
          ),
        ),
      ],
    );
  }
}

class RecepicesCard extends StatelessWidget {
  final String recepieImage;
  final String recepieName;
  final Function pushRecipeRoute;

  const RecepicesCard({
    super.key,
    required this.recepieImage,
    required this.recepieName,
    required this.pushRecipeRoute,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushRecipeRoute(context);
      },
      child: Stack(
        children: [
          Container(
            width: 263,
            height: 162,
            margin: const EdgeInsets.only(right: 10, left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(recepieImage),
                  fit: BoxFit.contain,
                  alignment: Alignment.topLeft),
            ),
          ),
          Positioned(
            top: 94,
            left: 20,
            child: Text(
              recepieName,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
