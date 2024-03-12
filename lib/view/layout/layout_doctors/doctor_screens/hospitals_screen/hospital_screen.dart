import 'package:fei_app/helper/model/custom_card_model.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_settings.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_card/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HospitalsScreen extends StatefulWidget {
  const HospitalsScreen({super.key});

  @override
  State<HospitalsScreen> createState() => _HospitalsScreenState();
}

class _HospitalsScreenState extends State<HospitalsScreen> {
  List<CustomCardModel> cardList = [
    CustomCardModel(
      onTap: () {
        goToScreen(screenNames: ScreenNames.doctorProfileScreen);
      },
      image: AppImages.hospital,
      title: AppWords.hospitalName.tr,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.hospital,
      title: AppWords.hospitalName.tr,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.hospital,
      title: AppWords.hospitalName.tr,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.hospital,
      title: AppWords.hospitalName.tr,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.hospital,
      title: AppWords.hospitalName.tr,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.hospital,
      title: AppWords.hospitalName.tr,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.hospital,
      title: AppWords.hospitalName.tr,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    )
  ];
  bool showFiltersContainer = false;
  int selectedFilterIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButtonCustom(),
        title:
            Text(AppWords.hospitals.tr, style: AppTextStyle.textStyle22medium),
        centerTitle: true,
        actions: [
          InkWell(
              onTap: () {
                setState(() {
                  showFiltersContainer = !showFiltersContainer;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Image.asset(AppImages.filter),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
          child: Column(children: [
            Divider(
              color: AppColors.textColor.withOpacity(0.5),
              thickness: .5,
              height: 1,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        CustomCard(
                          cardModel: cardList[index],
                        ),
                        showFiltersContainer && index == 0
                            ? Positioned(
                                left: isArabic ? 0 : 200,
                                right: isArabic ? 200 : 0,
                                child: Container(
                                  width: 170,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: AppColors.hintColor, width: 2),
                                    color: Colors.white,
                                  ),
                                  child: Column(children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedFilterIndex = 0;
                                        });
                                      },
                                      child: FliterDoctor(
                                        height: 40.h,
                                        isAccepted: selectedFilterIndex == 0,
                                        text: 'Lowest Price',
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedFilterIndex = 1;
                                        });
                                      },
                                      child: FliterDoctor(
                                        height: 40.h,
                                        isAccepted: selectedFilterIndex == 1,
                                        text: 'highest rate ',
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedFilterIndex = 2;
                                        });
                                      },
                                      child: FliterDoctor(
                                        height: 40.h,
                                        isAccepted: selectedFilterIndex == 2,
                                        text: 'nearest ',
                                      ),
                                    ),
                                  ]),
                                ),
                              )
                            : const SizedBox()
                      ],
                    );
                  },
                  itemCount: cardList.length),
            )
          ]),
        ),
      ),
    );
  }
}

class FliterDoctor extends StatelessWidget {
  const FliterDoctor({
    super.key,
    required this.isAccepted,
    required this.text,
    required this.height,
  });

  final bool isAccepted;
  final String text;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 170,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.hintColor, width: 1),
        color: isAccepted ? Colors.black : Colors.white,
      ),
      child: Row(
        children: [
          isAccepted
              ? const Icon(
                  Icons.check,
                  color: AppColors.backgroundColor,
                )
              : const SizedBox(),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: isAccepted
                ? AppTextStyle.textStyle18medium
                    .copyWith(color: AppColors.backgroundColor)
                : AppTextStyle.textStyle18medium,
          ),
        ],
      ),
    );
  }
}
