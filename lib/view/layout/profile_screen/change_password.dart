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
import 'package:get/get_connect/http/src/utils/utils.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool isAccepted = true;
  bool confirmAccepted = true;
  bool accepted = true;

  var passFocus = FocusNode();

  var newpassFocus = FocusNode();
  var conifirmpassFocus = FocusNode();

  var newpasswordController = TextEditingController();

  var confirmpasswordController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LogeScreen(
                  image: AppImages.confirmPassword,
                  title: '',
                  style: AppTextStyle.textStyle20regular),
              Text(
                AppWords.password.tr,
                style: AppTextStyle.textStyle20medium,
              ),
              CustomTextField(
                  onTap: () {},
                  controller: passwordController,
                  hintText: 'Enter your password',
                  inputType: TextInputType.visiblePassword,
                  obscureText: accepted,
                  textFieldValidType: TextFieldValidatorType.Password,
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          accepted = !accepted;
                        });
                      },
                      child: accepted
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility)),
                  currentFocusNode: conifirmpassFocus,
                  nextFocusNode: conifirmpassFocus),
              const SizedBox(
                height: 10,
              ),
              Text(
                AppWords.newpassword.tr,
                style: AppTextStyle.textStyle20medium,
              ),
              CustomTextField(
                  onTap: () {},
                  controller: newpasswordController,
                  hintText: 'Enter your password',
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
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility)),
                  currentFocusNode: newpassFocus,
                  nextFocusNode: conifirmpassFocus),
              Text(
                AppWords.confirmpassword.tr,
                style: AppTextStyle.textStyle20medium,
              ),
              CustomTextField(
                  onTap: () {},
                  controller: confirmpasswordController,
                  hintText: 'Enter your password',
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
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility)),
                  currentFocusNode: conifirmpassFocus,
                  nextFocusNode: conifirmpassFocus),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                title: AppWords.confirm.tr,
                style: AppTextStyle.textStyle24medium
                    .copyWith(color: AppColors.backgroundColor),
                onPress: () {
                  goToScreen(screenNames: ScreenNames.restPasswordScreen);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
