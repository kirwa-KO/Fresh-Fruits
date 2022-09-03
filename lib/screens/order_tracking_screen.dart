import 'package:flutter/material.dart';
import 'package:freshfruits/screens/write_review_screen.dart';
import 'package:freshfruits/styles/spacing.dart';
import 'package:freshfruits/widgets/order_tracking/order_tracking_stepper.dart';
import 'package:freshfruits/widgets/ui/bottom_navbar.dart';
import 'package:freshfruits/widgets/ui/buttons/long_button.dart';

class OrderTrackingScreen extends StatelessWidget {
  static const String routeName = "/order-tracking";

  const OrderTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Order Tracking"),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: pagePadding,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 28),
              Image.asset("assets/images/orders/order-tracking.png"),
              const OrderTrackingStepper(),
              LongButton(
                  label: "Submit review",
                  onPressed: () {
                    Navigator.of(context).pushNamed(WriteReviewScreen.routeName);
                  }),
              const SizedBox(height: 28)
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
