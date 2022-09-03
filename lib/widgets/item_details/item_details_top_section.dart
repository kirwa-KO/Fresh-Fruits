import 'package:flutter/material.dart';
import 'package:freshfruits/screens/shopping_cart_screen.dart';
import 'package:freshfruits/styles/colors.dart';
import 'package:freshfruits/widgets/ui/buttons/long_button.dart';
import 'package:freshfruits/widgets/ui/quantity_control.dart';
import 'package:hexcolor/hexcolor.dart';

class ItemDetailsTopSection extends StatelessWidget {
  const ItemDetailsTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("FRUITS", style: Theme.of(context).textTheme.headline3),
        Text("Fresh Orange", style: Theme.of(context).textTheme.headline4),
        const SizedBox(height: 4),
        const ItemPriceQuantity(),
        const SizedBox(height: 28),
        const Reviews(),
        const SizedBox(height: 28),
        const InfoTab(),
        const SizedBox(height: 28),
        LongButton(
          label: "Add to cart \$70.89",
          onPressed: () {
            Navigator.of(context).pushNamed(ShoppingCartScreen.routeName);
          },
        )
      ],
    );
  }
}

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: const [
            Icon(Icons.star, color: yellowColor),
            SizedBox(width: 8),
            Text("4.5",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            SizedBox(width: 8),
            Text("(128 reviews)",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: grayColor)),
          ],
        ),
        Row(
          children: [
            Container(
                transform: Matrix4.translationValues(20, 0, 0),
                child: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/avatars/avatar3.png"))),
            Container(
              transform: Matrix4.translationValues(10, 0, 0),
              child: const CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/avatars/avatar2.png")),
            ),
            const CircleAvatar(
                backgroundImage:
                    AssetImage("assets/images/avatars/avatar1.png")),
          ],
        )
      ],
    );
  }
}

class ItemPriceQuantity extends StatelessWidget {
  const ItemPriceQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "\$4.9",
          style: TextStyle(
            fontSize: 24,
            color: yellowColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        QuantityControl(quantity: 3),
      ],
    );
  }
}

class InfoTab extends StatefulWidget {
  const InfoTab({super.key});

  @override
  State<InfoTab> createState() => _InfoTabState();
}

class _InfoTabState extends State<InfoTab> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabController,
          labelColor: Colors.black,
          unselectedLabelColor: lightGrayColor2,
          indicatorColor: yellowColor,
          tabs: const [
            Tab(text: "Description"),
            Tab(text: "Review"),
            Tab(text: "Disscussion"),
          ],
        ),
        const SizedBox(height: 24),
        Container(
          height: 100,
          width: double.infinity,
          child: TabBarView(
            controller: tabController,
            children: const [
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
            ],
          ),
        )
      ],
    );
  }
}
