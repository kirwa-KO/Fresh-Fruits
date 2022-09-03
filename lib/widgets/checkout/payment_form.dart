import 'package:flutter/material.dart';
import 'package:freshfruits/screens/thank_you_screen.dart';
import 'package:freshfruits/styles/colors.dart';
import 'package:freshfruits/widgets/checkout/shpping_form.dart';
import 'package:freshfruits/widgets/ui/buttons/long_button.dart';
import 'package:freshfruits/widgets/ui/inputs/checkbox_feild.dart';
import 'package:freshfruits/widgets/ui/inputs/dropdown_select_feild.dart';
import 'package:freshfruits/widgets/ui/inputs/outlined_grey_textfeild.dart';
import 'package:hexcolor/hexcolor.dart';

class PaymentForm extends StatelessWidget {
  final Function nextButton;

  const PaymentForm({super.key, required this.nextButton});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          height: 56,
          child: const PaymentMethodList(),
        ),
        seperator(),
        const OutlinedGreyTextfeild(
            label: "Card Holder Name", hint: "Imran Baali"),
        seperator(),
        const OutlinedGreyTextfeild(
            label: "Card Number", hint: "333 4444 5555 6666"),
        seperator(),
        const OutlinedGreyTextfeild(label: "MM/YY", hint: "02/28"),
        seperator(),
        const OutlinedGreyTextfeild(label: "CVV", hint: "092"),
        seperator(),
        const DropdownSelectFeild(options: countriesList),
        const SizedBox(height: 8),
        const CheckoxFeild(label: "Save credit card details"),
        const SizedBox(height: 8),
        LongButton(
            label: "Confirm ORDER",
            onPressed: () {
              Navigator.of(context).pushNamed(ThankYouScreen.routeName);
            }),
        const SizedBox(height: 32),
      ]),
    );
  }

  Widget seperator() {
    return (const SizedBox(height: 20));
  }
}

const paymentTypes = [
  "Cash on Delivery",
  "Credit Card",
  "Dedit Card",
];

class PaymentMethodButton extends StatelessWidget {
  final String label;
  final int index;
  final bool isActive;
  final Function onPressed;

  const PaymentMethodButton(
      {super.key,
      required this.label,
      required this.isActive,
      required this.onPressed,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed(index);
      },
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: isActive ? HexColor("#FEC54B") : whiteColor,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          side: const BorderSide(width: 2, color: yellowColor)),
      child: Text(label),
    );
  }
}

class PaymentMethodList extends StatefulWidget {
  const PaymentMethodList({super.key});

  @override
  State<PaymentMethodList> createState() => _PaymentMethodListState();
}

class _PaymentMethodListState extends State<PaymentMethodList> {
  int activeMethod = 1;

  void _changePaymentMethod(int index) {
    setState(() {
      activeMethod = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      clipBehavior: Clip.none,
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: PaymentMethodButton(
          label: paymentTypes[index],
          isActive: activeMethod == index,
          index: index,
          onPressed: _changePaymentMethod,
        ),
      ),
      itemCount: paymentTypes.length,
    );
  }
}
