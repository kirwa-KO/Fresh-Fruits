import 'package:flutter/material.dart';
import 'package:freshfruits/styles/colors.dart';
import 'package:hexcolor/hexcolor.dart';

class QuantityControl extends StatefulWidget {
  late int quantity;
  final Color? iconColor;

  QuantityControl({super.key, required this.quantity, this.iconColor});

  @override
  State<QuantityControl> createState() => _QuantityControlState();
}

class _QuantityControlState extends State<QuantityControl> {
  void _incrementQuantity() {
    setState(() {
      widget.quantity++;
    });
  }

  void _decrementQuantity() {
    if (widget.quantity <= 0) return;
    setState(() {
      widget.quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HexColor("#EFEFEF"),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: _decrementQuantity,
            icon: Icon(
              Icons.remove_rounded,
              color: widget.iconColor ?? yellowColor,
            ),
          ),
          Text(
            widget.quantity.toString(),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          IconButton(
              onPressed: _incrementQuantity,
              icon: Icon(
                Icons.add_rounded,
                color: widget.iconColor ?? yellowColor,
              )),
        ],
      ),
    );
  }
}
