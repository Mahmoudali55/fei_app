import 'package:fei_app/helper/model/custom_card_model.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_card/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LabsScreen extends StatefulWidget {
  const LabsScreen({super.key});

  @override
  State<LabsScreen> createState() => _LabsScreenState();
}

class _LabsScreenState extends State<LabsScreen> {
  List<CustomCardModel> cardList = [
    CustomCardModel(
      image: AppImages.technoScan,
      title: AppWords.technoScan,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.technoScan,
      title: AppWords.technoScan,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.technoScan,
      title: AppWords.technoScan,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.technoScan,
      title: AppWords.technoScan,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.technoScan,
      title: AppWords.technoScan,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.technoScan,
      title: AppWords.doctorsname,
      subtitle: AppWords.locationdoctor,
      rate: 3,
    ),
    CustomCardModel(
      image: AppImages.technoScan,
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
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const BackButtonCustom(),
              Text(
                AppWords.centersname.tr,
                style: AppTextStyle.textStyle22medium,
              ),
              GestureDetector(
                  onTap: () {}, child: Image.asset(AppImages.filter)),
            ]),
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

class CUstomFilter extends StatelessWidget {
  const CUstomFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 100.h,
      color: AppColors.primaryColor,
    );
  }
}
