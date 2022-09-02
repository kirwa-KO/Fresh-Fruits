import 'package:flutter/material.dart';
import 'package:freshfruits/styles/colors.dart';

class WriteReviewPickStars extends StatefulWidget {
  const WriteReviewPickStars({super.key});

  @override
  State<WriteReviewPickStars> createState() => _WriteReviewPickStarsState();
}

class _WriteReviewPickStarsState extends State<WriteReviewPickStars> {
  int rating = 5;

  void _changeRating(int newRating) {
    setState(() {
      rating = newRating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$rating.0',
          style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
        ),
        Stars(rating: rating, changeRating: _changeRating),
      ],
    );
  }
}

class Stars extends StatelessWidget {
  final int maxStars = 5;
  final int rating;
  final Function changeRating;
  const Stars({super.key, required this.rating, required this.changeRating});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _myStars(maxStars, rating, changeRating),
    );
  }

  List<Widget> _myStars(int count, int rating, Function changeRating) {
    return List.generate(
        count,
        (index) => IconButton(
              icon: rating <= index
                  ? const Icon(Icons.star_border_rounded, size: 32,)
                  : const Icon(Icons.star_rounded, size: 32,),
              color: yellowColor,
              onPressed: () {
                changeRating(index + 1);
              },
              // size: 32,
            )).toList();
  }
}
