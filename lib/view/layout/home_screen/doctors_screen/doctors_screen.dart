import 'package:fei_app/helper/model/custom_card_model.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_card/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({super.key});

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  List<CustomCardModel> cardList = [
    CustomCardModel(
      image: AppImages.doctors,
      title: AppWords.doctorsname,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.doctors,
      title: AppWords.doctorsname,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.doctors,
      title: AppWords.doctorsname,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.doctors,
      title: AppWords.doctorsname,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.doctors,
      title: AppWords.doctorsname,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.doctors,
      title: AppWords.doctorsname,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.doctors,
      title: AppWords.doctorsname,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
          child: Column(children: [
            Row(
              children: [
                const BackButtonCustom(),
                const SizedBox(
                  width: 60,
                ),
                Text(
                  AppWords.pulmonologist.tr,
                  style: AppTextStyle.textStyle22medium,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CustomCard(
                      cardModel: cardList[index],
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
