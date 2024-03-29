import 'package:fei_app/helper/model/custom_item_model_profile.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/customs_widgets/custom_item_profile/custom_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomItemProfile extends StatelessWidget {
  const CustomItemProfile({
    super.key,
    required this.itemProfileModel,
    required this.buttonTitle,
    required this.specialist,
    this.onPress,
  });
  final String buttonTitle;
  final String specialist;
  final CustomItemProfileModel itemProfileModel;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: const BackButtonCustom(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 4,
            ),
            Center(child: Image.asset(itemProfileModel.image)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              width: 1.sw,
              height: MediaQuery.of(context).size.height / 1.4,
              decoration: const BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(25))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        itemProfileModel.name,
                        style: AppTextStyle.textStyle24semiBold,
                      ),
                      const Spacer(),
                      Transform.scale(
                          scale: .9,
                          child: Image.asset('assets/image/phone.png')),
                      const SizedBox(
                        width: 20,
                      ),
                      Transform.scale(
                          scale: .9,
                          child: Image.asset('assets/image/message.png')),
                    ],
                  ),
                  Text(
                    specialist,
                    style: AppTextStyle.textStyle20medium
                        .copyWith(color: Colors.grey),
                  ),
                  Text(
                    '${itemProfileModel.price} EGP',
                    style: AppTextStyle.textStyle20medium,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 20,
                        color: AppColors.primaryColor,
                      ),
                      Text(
                        itemProfileModel.location,
                        style: AppTextStyle.textStyle16semiBold,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      CustomDescription(
                        text: AppWords.patients.tr,
                        suptext: ' ${itemProfileModel.patientsNumbers}+',
                        image: AppImages.personGreenIcon,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      CustomDescription(
                        text: AppWords.experience.tr,
                        suptext: ' ${itemProfileModel.experience} Yrs+',
                        image: AppImages.experience,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      CustomDescription(
                        text: AppWords.rating.tr,
                        suptext: ' ${itemProfileModel.rate}',
                        image: AppImages.rating,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppWords.about.tr,
                    style: AppTextStyle.textStyle20bold,
                  ),
                  Text(
                    itemProfileModel.about,
                    style: AppTextStyle.textStyle15regular
                        .copyWith(color: const Color(0xff515050)),
                  ),
                  Wrap(direction: Axis.horizontal, spacing: 10, children: [
                    ...List.generate(
                        //5 is the number of items in the list 'length'
                        //if 10 is the number of items in the list
                        10 > 6 ? 7 : 7,
                        (index) => Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: index == 6
                                  ? AppColors.primaryColor
                                  : AppColors.backgroundColor,
                              image: DecorationImage(
                                  image: AssetImage(
                                      index == 6 ? '' : AppImages.patient),
                                  fit: BoxFit.fill),
                              shape: BoxShape.circle,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(' ${index == 6 ? '  ${10 - 6} +' : ''}',
                                    style: AppTextStyle.textStyle18medium
                                        .copyWith(
                                            color: AppColors.backgroundColor)),
                              ],
                            )))
                  ]),
                  CustomButton(
                    style: AppTextStyle.textStyle24medium
                        .copyWith(color: AppColors.backgroundColor),
                    onPress: onPress,
                    title: buttonTitle,
                    titleFontColor: AppColors.backgroundColor,
                    titleFontSize: 4.5,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    indent: 100,
                    endIndent: 100,
                    thickness: 4,
                    color: AppColors.textColor,
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
