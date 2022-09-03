import 'package:flutter/material.dart';
import 'package:freshfruits/widgets/layout/my_custom_scroll_view.dart';

class LayoutDependOnMode extends StatelessWidget {
  final Widget child;
  const LayoutDependOnMode({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    if (!isLandscape) {
      return MyCustomScrollView(child: child);
    }
    return (SingleChildScrollView(child: child));
  }
}
