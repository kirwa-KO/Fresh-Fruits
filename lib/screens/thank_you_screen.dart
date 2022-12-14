import 'package:flutter/material.dart';
import 'package:freshfruits/screens/order_tracking_screen.dart';
import 'package:freshfruits/styles/spacing.dart';
import 'package:freshfruits/widgets/layout/layout_depend_on_mode.dart';
import 'package:freshfruits/widgets/ui/bottom_navbar.dart';
import 'package:freshfruits/widgets/ui/buttons/long_button.dart';

class ThankYouScreen extends StatelessWidget {
  static const String routeName = "/thank-you";

  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Thank You"),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: LayoutDependOnMode(
        child: Padding(
          padding: pagePadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/images/onboarding/step3.png"),
              Column(
                children: [
                  const SizedBox(height: 28),
                  Text(
                    "Your Order in process",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 28),
                ],
              ),
              LongButton(
                  label: "Track your order",
                  onPressed: () {
                    Navigator.of(context).pushNamed(OrderTrackingScreen.routeName);
                  }),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavbar(
        selectedIndex: 2,
      ),
    );
  }
}
