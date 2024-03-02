import 'package:fei_app/helper/model/custom_item_model_profile.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/customs_widgets/custom_item_profile/custom_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CustomLabProfile extends StatelessWidget {
  const CustomLabProfile(
      {super.key,
      required this.itemProfileModel,
      required this.buttonTitle,
      required this.specialist});
  final String buttonTitle;
  final String specialist;
  final CustomItemProfileModel itemProfileModel;
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
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 4,
              ),
              Center(child: Image.asset(itemProfileModel.image)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                width: 1.sw,
                height: MediaQuery.of(context).size.height / 1.3,
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
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 20,
                        ),
                        Text(
                          itemProfileModel.location,
                          style: AppTextStyle.textStyle16semiBold
                              .copyWith(color: AppColors.primaryColor),
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
                          suptext: ' ${itemProfileModel.rate.tr}',
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
                    const SizedBox(
                      height: 14,
                    ),
                    Text(
                      AppWords.availability.tr,
                      style: AppTextStyle.textStyle20bold,
                    ),
                    Text(
                      AppWords.availabilitylab.tr,
                      style: AppTextStyle.textStyle15regular
                          .copyWith(color: const Color(0xff515050)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      style: AppTextStyle.textStyle24medium
                          .copyWith(color: AppColors.backgroundColor),
                      onPress: () {
                        goToScreen(screenNames: ScreenNames.labsAppointment);
                      },
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
        ],
      ),
    );
  }
}
