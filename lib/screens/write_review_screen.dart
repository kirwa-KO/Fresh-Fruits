import 'package:flutter/material.dart';
import 'package:freshfruits/styles/spacing.dart';
import 'package:freshfruits/widgets/ui/bottom_navbar.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: pagePadding,
          child: Column(
            children: const [
              SizedBox(height: 28),
              WriteReviewHeader(),
              SizedBox(height: 10),
              WriteReviewPickStars(),
              SizedBox(height: 28),
              WriteReviewForm(),
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
