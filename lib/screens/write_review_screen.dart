import 'package:flutter/material.dart';
import 'package:freshfruits/styles/spacing.dart';
import 'package:freshfruits/widgets/ui/bottom_navbar.dart';
import 'package:freshfruits/widgets/ui/buttons/long_button.dart';
import 'package:freshfruits/widgets/write_review/write_review_form.dart';
import 'package:freshfruits/widgets/write_review/write_review_header.dart';
import 'package:freshfruits/widgets/write_review/write_review_pick_stars.dart';

class WriteReviewScreen extends StatelessWidget {
  static const String routeName = "/write-review";

  const WriteReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Write Reviews"),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: pagePadding,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            WriteReviewHeader(),
            WriteReviewPickStars(),
            WriteReviewForm(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavbar(
        selectedIndex: 2,
      ),
    );
  }
}
