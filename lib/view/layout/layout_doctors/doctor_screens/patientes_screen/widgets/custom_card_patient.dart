import 'package:fei_app/helper/model/custom_card_model.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/layout/home_screen/widgets/rate.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class CustomCardPatinet extends StatelessWidget {
  const CustomCardPatinet({super.key, required this.cardModel});
  final CustomCardModelpatient cardModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: cardModel.onTappatientprofile,
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
                  Container(
                      child: Row(children: [
                    Icon(
                      Icons.location_on,
                      size: 15.w,
                    ),
                    Text(
                      cardModel.subtitle.tr,
                      style: AppTextStyle.textStyle16regular,
                    ),
                  ])),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('ID:',
                                style: AppTextStyle.textStyle16medium
                                    .copyWith(color: AppColors.hintColor)),
                            Text(
                              cardModel.id,
                              style: AppTextStyle.textStyle16medium,
                            ),
                            SizedBox(
                              width: 140.w,
                            ),
                            InkWell(
                                onTap: cardModel.onTap,
                                child: Image.asset(
                                  AppImages.message,
                                  color: AppColors.primaryColor,
                                ))
                          ],
                        ),
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
