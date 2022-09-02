import 'package:flutter/material.dart';
import 'package:freshfruits/styles/colors.dart';
import 'package:freshfruits/styles/spacing.dart';
import 'package:freshfruits/widgets/checkout/payment_form.dart';
import 'package:freshfruits/widgets/checkout/shpping_form.dart';
import 'package:freshfruits/widgets/ui/inputs/outlined_grey_textfeild.dart';
import 'package:im_stepper/stepper.dart';

class CheckoutScreen extends StatefulWidget {
  static const String routeName = "/checkout";

  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int activeStep = 0; // Initial step set to 5.

  int upperBound = 1; // upperBound MUST BE total number of icons minus 1.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Checkout"),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          StepperHeader(),
          header(),
          Expanded(
            child: Container(
              padding: pagePadding,
              margin: const EdgeInsets.only(top: 24),
              child: body(),
            ),
          ),
        ],
      ),
    );
  }

  Widget StepperHeader() {
    return IconStepper(
      nextButtonIcon: null,
      activeStepBorderColor: mainColor,
      activeStepBorderWidth: 4,
      activeStepColor: Colors.transparent,
      stepColor: mainColor,
      lineColor: mainColor,
      enableNextPreviousButtons: false,
      alignment: Alignment.center,
      lineLength: MediaQuery.of(context).size.width - 180,
      icons: [
        Icon(
          Icons.local_shipping,
          color: activeStep == 0 ? Colors.black : Colors.white,
        ),
        Icon(
          Icons.payment,
          color: activeStep == 1 ? Colors.black : Colors.white,
        ),
      ],
      activeStep: activeStep,
      onStepReached: (index) {
        setState(() {
          activeStep = index;
        });
      },
    );
  }

  /// Returns the next button.
  void nextButton() {
    if (activeStep < upperBound) {
      setState(() {
        activeStep++;
      });
    }
  }

  Widget header() {
    return Text(
      headerText(),
      style: const TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget body() {
    if (activeStep == 0) {
      return (ShppingForm(nextButton: nextButton));
    }
    return (PaymentForm(nextButton: nextButton));
  }

  String headerText() {
    switch (activeStep) {
      case 1:
        return 'Payment Method';

      default:
        return 'Shipping Address';
    }
  }
}
