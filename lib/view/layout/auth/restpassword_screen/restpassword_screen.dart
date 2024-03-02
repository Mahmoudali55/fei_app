import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/customs_widgets/custom_logo/Custom_logo.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestPasswordScreen extends StatefulWidget {
  const RestPasswordScreen({super.key});

  @override
  State<RestPasswordScreen> createState() => _RestPasswordScreenState();
}

class _RestPasswordScreenState extends State<RestPasswordScreen> {
  bool isAccepted = true;
  bool confirmAccepted = true;

  var confirmfocus = FocusNode();

  var passFocus = FocusNode();

  var confirmController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LogeScreen(
                  image: AppImages.restpassword,
                  title: AppWords.reset.tr,
                  style: AppTextStyle.textStyle20regular),
              const SizedBox(height: 30),
              Text(
                AppWords.password.tr,
                style: AppTextStyle.textStyle20medium,
              ),
              CustomTextField(
                  onTap: () {},
                  controller: passwordController,
                  hintText: 'Enter your password',
                  fillColor: AppColors.hintColor,
                  inputType: TextInputType.visiblePassword,
                  obscureText: isAccepted,
                  textFieldValidType: TextFieldValidatorType.Password,
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isAccepted = !isAccepted;
                        });
                      },
                      child: isAccepted
                          ? const Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            )
                          : const Icon(Icons.visibility)),
                  currentFocusNode: passFocus,
                  nextFocusNode: confirmfocus),
              const SizedBox(height: 10),
              Text(
                AppWords.confirmpassword.tr,
                style: AppTextStyle.textStyle20medium,
              ),
              CustomTextField(
                  onTap: () {},
                  controller: confirmController,
                  hintText: 'Enter your password',
                  fillColor: AppColors.hintColor,
                  inputType: TextInputType.visiblePassword,
                  obscureText: confirmAccepted,
                  textFieldValidType: TextFieldValidatorType.Password,
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          confirmAccepted = !confirmAccepted;
                        });
                      },
                      child: confirmAccepted
                          ? const Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            )
                          : const Icon(Icons.visibility)),
                  currentFocusNode: confirmfocus,
                  nextFocusNode: confirmfocus),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                title: AppWords.confirm.tr,
                style: AppTextStyle.textStyle24medium
                    .copyWith(color: AppColors.backgroundColor),
                onPress: () {
                  goToScreen(screenNames: ScreenNames.bottomNavigationBar);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
