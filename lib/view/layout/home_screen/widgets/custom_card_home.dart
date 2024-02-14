import 'package:fei_app/helper/model/custom_card_model.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/view/layout/home_screen/widgets/custom_onbourding_home.dart';
import 'package:fei_app/view/layout/home_screen/widgets/rate.dart';
import 'package:fei_app/view/layout/splash_screen/widgets/custom_onbourding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCardHome extends StatelessWidget {
  const CustomCardHome({
    super.key,
    required this.cardModel,
    required this.currentPage,
  });
  final CustomCardModel cardModel;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
          decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.primaryColor, width: 2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(cardModel.image, height: 165, width: 119),
                  Column(children: [
                    Text(
                      cardModel.title,
                      style: AppTextStyle.textStyle20medium,
                    ),
                    Text(
                      cardModel.subtitle,
                      style: AppTextStyle.textStyle16regular,
                    ),
                    CustomRatingBar(rate: cardModel.rate, initialRating: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          4,
                          (index) => CustomOnbourdingHome(
                                isActive: index == currentPage,
                              )),
                    )
                  ])
                ],
              )
            ],
          )),
    );
  }
}
