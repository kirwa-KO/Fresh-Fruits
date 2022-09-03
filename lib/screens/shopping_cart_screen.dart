import 'package:flutter/material.dart';
import 'package:freshfruits/screens/checkout_screen.dart';
import 'package:freshfruits/styles/colors.dart';
import 'package:freshfruits/widgets/shopping_cart/shopping_cart_orders_list.dart';
import 'package:freshfruits/widgets/ui/bottom_navbar.dart';
import 'package:hexcolor/hexcolor.dart';

class ShoppingCartScreen extends StatelessWidget {
  static const String routeName = "/shopping-cart";

  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor("#fff"),
        title: const Text("Shopping cart"),
        centerTitle: false,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(CheckoutScreen.routeName);
              },
              child: const Text(
                "Place Order",
                style: TextStyle(color: mainColor),
              ))
        ],
      ),
      body: ShoppingCartOrdersList(),
      bottomNavigationBar: const BottomNavbar(selectedIndex: 3),
    );
  }
}
