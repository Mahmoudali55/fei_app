import 'package:fei_app/helper/model/custom_card_model.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/get_utils.dart';

class CustomCardLabResult extends StatelessWidget {
  const CustomCardLabResult({super.key, required this.cardModel});
  final CustomCardModellab cardModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: cardModel.onTap,
      child: Card(
        elevation: 10,
        surfaceTintColor: AppColors.backgroundColor,
        //borderOnForeground: true,
        shadowColor: AppColors.secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        //color: AppColors.backgroundColor,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          width: 400.w,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: AppColors.secondaryColor,
                width: 1.5.w,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Image.asset(
                  cardModel.image,
                  fit: BoxFit.fill,
                  height: 80.h,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    cardModel.title.tr,
                    style: AppTextStyle.textStyle20semibold,
                  ),
                  Text(
                    cardModel.subtitle.tr,
                    style: AppTextStyle.textStyle16regular,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        cardModel.date,
                        style: AppTextStyle.textStyle16regular,
                      ),
                      SizedBox(
                        width: 140.w,
                      ),
                    ],
                  )
                ]),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
