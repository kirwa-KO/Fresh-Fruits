import 'package:flutter/material.dart';
import 'package:freshfruits/providers/receipes_provider.dart';

class RecepicesHorzList extends StatelessWidget {
  late List<Map<String, String>> receipes;

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

  const RecepicesCard(
      {super.key, required this.recepieImage, required this.recepieName});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
          left: 10,
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
    );
  }
}
