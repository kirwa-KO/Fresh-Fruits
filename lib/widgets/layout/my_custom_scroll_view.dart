import 'package:flutter/material.dart';

class MyCustomScrollView extends StatelessWidget {
  final Widget child;

  const MyCustomScrollView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: child,)
      ],
    );
  }
}