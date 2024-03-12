import 'package:fei_app/helper/model/custom_card_model.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/lab_result_screen/widgets/Custom_CardLab_Result.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class LabResulutScreen extends StatefulWidget {
  const LabResulutScreen({super.key});

  @override
  State<LabResulutScreen> createState() => _LabResulutScreenState();
}

class _LabResulutScreenState extends State<LabResulutScreen> {
  String? filePath;

  Future<void> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        filePath = result.files.single.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: const BackButtonCustom(),
            elevation: 0,
            centerTitle: true,
            title: Text(
              AppWords.labResult.tr,
            )),
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
              Wrap(direction: Axis.vertical, children: [
                ...List.generate(
                    10,
                    (index) => CustomCardLabResult(
                            cardModel: CustomCardModellab(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                        content: GestureDetector(
                                      onTap: () {
                                        pickFile();
                                      },
                                      child: Container(
                                        child: Row(children: [
                                          const Icon(Icons.download_outlined,
                                              color: AppColors.thirdColor),
                                          SizedBox(width: 20.w),
                                          Text(
                                            'Download',
                                            style: AppTextStyle.textStyle20bold
                                                .copyWith(
                                                    color:
                                                        AppColors.thirdColor),
                                          )
                                        ]),
                                      ),
                                    )));
                          },
                          subtitle: 'Tc _Scan',
                          image: AppImages.technoScan,
                          date: '4/3/2024',
                          title: AppWords.labResult.tr,
                        )))
              ])
            ],
          ),
        ));
  }
}
