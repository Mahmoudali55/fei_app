import 'package:fei_app/helper/model/custom_card_model.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/patientes_screen/widgets/custom_card_patient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PaymentHistoryScreen extends StatelessWidget {
  const PaymentHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        leading: const BackButtonCustom(),
        centerTitle: true,
        title: Text('Payment History', style: AppTextStyle.textStyle24bold),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              const Divider(),
              Wrap(
                direction: Axis.horizontal,
                children: [
                  ...List.generate(
                      10,
                      (index) => Card(
                            color: AppColors.backgroundColor,
                            elevation: 10,
                            shadowColor: AppColors.secondaryColor,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Container(
                                padding: EdgeInsets.all(10.h),
                                height: 127.h,
                                decoration: BoxDecoration(
                                    color: AppColors.backgroundColor,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color: AppColors.primaryColor,
                                        width: 2)),
                                child: ListTile(
                                    onTap: () {},
                                    leading: Image.asset(AppImages.patient),
                                    title: Text(
                                      AppWords.patientName.tr,
                                      style: AppTextStyle.textStyle20bold,
                                    ),
                                    subtitle: const Text(
                                      ' 25,6, 2024 ',
                                    ))),
                          )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
