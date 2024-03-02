import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar(
      {Key? key, required this.rate, required this.initialRating})
      : super(key: key);
  final double rate;
  final double initialRating;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      // mainAxisSize: MainAxisSize.min,
      children: [
        RatingBar.builder(
          textDirection: TextDirection.ltr,
          glowColor: Colors.white,
          itemPadding: const EdgeInsets.all(1),
          initialRating: initialRating,
          minRating: 1,
          maxRating: 5,
          itemSize: 15,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
      ],
    );
  }
}
