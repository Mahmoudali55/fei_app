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

class PrescriptionsScreen extends StatelessWidget {
  const PrescriptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButtonCustom(),
        centerTitle: true,
        title: Text('Prescriptions', style: AppTextStyle.textStyle24bold),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            CustomTextField(
              hintText: 'Search',
              prefixIcon: AppImages.search,
              onTap: () {},
              height: 60.h,
              textFieldValidType: TextFieldValidatorType.Optional,
              inputType: TextInputType.text,
              fillColor: AppColors.hintColor,
              currentFocusNode: FocusNode(),
              nextFocusNode: FocusNode(),
            ),
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
                          child: GestureDetector(
                            onTap: () {
                              goToScreen(
                                  screenNames: ScreenNames.prescriptionScreen);
                            },
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
                          ),
                        )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
