import 'package:flutter/material.dart';
import 'package:freshfruits/widgets/layout/my_custom_scroll_view.dart';

class ImageBgContentCardLayout extends StatelessWidget {
  final dynamic child;
  final String imageBg;
  const ImageBgContentCardLayout(
      {super.key, required this.child, required this.imageBg});

  @override
  Widget build(BuildContext context) {
    // double heightMargin = MediaQuery.of(context).size.height / 4;
    return MyCustomScrollView(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imageBg),
              fit: BoxFit.contain,
              alignment: Alignment.topLeft),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              // margin: EdgeInsets.only(top: heightMargin),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 28),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
