import 'package:fei_app/helper/model/custom_card_model.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_settings.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_card/custom_card.dart';
import 'package:fei_app/view/layout/home_screen/doctors_screen/doctors_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LabsScreen extends StatefulWidget {
  const LabsScreen({super.key});

  @override
  State<LabsScreen> createState() => _LabsScreenState();
}

class _LabsScreenState extends State<LabsScreen> {
  List<CustomCardModel> cardList = [
    CustomCardModel(
      onTap: () {
        goToScreen(screenNames: ScreenNames.labProfileScreen);
      },
      image: AppImages.technoScan,
      title: AppWords.technoScan.tr,
      subtitle: AppWords.locationdoctor.tr,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.technoScan,
      title: AppWords.technoScan.tr,
      subtitle: AppWords.locationdoctor.tr,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.technoScan,
      title: AppWords.technoScan.tr,
      subtitle: AppWords.locationdoctor.tr,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.technoScan,
      title: AppWords.technoScan.tr,
      subtitle: AppWords.locationdoctor.tr,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.technoScan,
      title: AppWords.technoScan.tr,
      subtitle: AppWords.locationdoctor.tr,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.technoScan,
      title: AppWords.doctorsname.tr,
      subtitle: AppWords.locationdoctor.tr,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.technoScan,
      title: AppWords.doctorsname.tr,
      subtitle: AppWords.locationdoctor.tr,
      rate: 3,
    )
  ];
  bool showFiltersContainer = false;
  int selectedFilterIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const BackButtonCustom(),
          title: Text(
            AppWords.centersname.tr,
            style: AppTextStyle.textStyle22medium,
          ),
          centerTitle: true,
          actions: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    showFiltersContainer = !showFiltersContainer;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Image.asset(AppImages.filter),
                )),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: Column(children: [
            Divider(
              color: AppColors.textColor.withOpacity(.4),
              thickness: 1,
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
                                right: isArabic ? 200 : 00,
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
                                        height: 30,
                                        isAccepted: selectedFilterIndex == 0,
                                        text: 'C.T Scan',
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedFilterIndex = 1;
                                        });
                                      },
                                      child: FliterDoctor(
                                        height: 30,
                                        isAccepted: selectedFilterIndex == 1,
                                        text: 'Blood Scan',
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedFilterIndex = 2;
                                        });
                                      },
                                      child: FliterDoctor(
                                        height: 30,
                                        isAccepted: selectedFilterIndex == 2,
                                        text: 'D-Dimeter',
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedFilterIndex = 3;
                                        });
                                      },
                                      child: FliterDoctor(
                                        height: 30,
                                        isAccepted: selectedFilterIndex == 3,
                                        text: 'Chest X-ray',
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedFilterIndex = 4;
                                        });
                                      },
                                      child: FliterDoctor(
                                        height: 30,
                                        isAccepted: selectedFilterIndex == 4,
                                        text: 'Echo Scan',
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
