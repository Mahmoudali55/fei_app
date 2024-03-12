import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_card/custom_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  final List<double> _ratingsList = [0, 0, 0, 0];
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        leading: const BackButtonCustom(),
        title: Text('Review', style: AppTextStyle.textStyle24bold),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            const Divider(
              color: AppColors.hintColor,
              thickness: 2,
              height: 10,
            ),
            Row(children: [
              Column(
                children: [
                  Text(
                    ' ${_ratingsList.reduce((value, element) => value + element) / 4} / 4',
                    style: AppTextStyle.textStyle24bold,
                  ),
                  Text(
                    '100 Reviews',
                    style: AppTextStyle.textStyle16regular,
                  ),
                ],
              ),
              const SizedBox(
                width: 6,
              ),
              Container(
                width: 2,
                height: 100,
                color: AppColors.hintColor,
              ),
              Wrap(
                direction: Axis.vertical,
                children: List.generate(
                  4,
                  (index) => Row(
                    children: [
                      RatingBar.builder(
                        initialRating: _ratingsList[index],
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemSize: 20,
                        allowHalfRating: true,
                        itemCount: 4,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          setState(() {
                            _ratingsList[index] = rating;
                          });
                        },
                      ),
                      Container(
                        height: 4,
                        width: 80,
                        color: AppColors.primaryColor,
                        child: LinearProgressIndicator(
                          value: (_ratingsList[index] / 4),
                          backgroundColor: Colors.grey[300],
                          color: Colors.amber,
                          minHeight: 10,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        (_ratingsList[index] * 25)
                            .toStringAsFixed(0), // النسبة المئوية كنص
                        style: TextStyle(
                          fontSize: 12, // حجم النص
                          color: Colors.grey[600], // لون النص
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      ListTile(
                          leading: Image.asset(AppImages.patient),
                          title: Text(AppWords.patientName.tr,
                              style: AppTextStyle.textStyle20bold),
                          subtitle: RatingBar.builder(
                            initialRating: rating,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemSize: 20,
                            allowHalfRating: true,
                            itemCount: 4,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              setState(() {
                                rating = rating;
                              });
                            },
                          ),
                          trailing: Text(
                            '1 week ago',
                            style: AppTextStyle.textStyle12light,
                          )),
                      const Text(
                          'He is a great doctor. He is the best\n. i would recommend anyone to he')
                    ],
                  ),
                );
              }),
            )
          ])),
    );
  }
}
