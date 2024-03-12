import 'package:fei_app/helper/model/custom_card_model.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_card/custom_card.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/patientes_screen/widgets/custom_card_patient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class PatientesScreen extends StatelessWidget {
  const PatientesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: const BackButtonCustom(),
        title: Text(
          AppWords.patients.tr,
          style: AppTextStyle.textStyle24bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
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
                (index) => CustomCardPatinet(
                    cardModel: CustomCardModelpatient(
                  onTappatientprofile: () {
                    goToScreen(screenNames: ScreenNames.patientesProfileScreen);
                  },
                  onTap: () {
                    goToScreen(screenNames: ScreenNames.chatScreen);
                  },
                  id: AppWords.patientID.tr,
                  image: AppImages.patient,
                  title: AppWords.patientName,
                  subtitle: AppWords.locationdoctor,
                )),
              )
            ],
          )
        ]),
      ),
    );
  }
}
