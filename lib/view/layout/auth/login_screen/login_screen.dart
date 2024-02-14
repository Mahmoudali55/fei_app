import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/customs_widgets/custom_logo/Custom_logo.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isAccepted = true;
  var username = FocusNode();
  var passFocus = FocusNode();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: LogeScreen(
                  image: AppImages.login,
                  title: AppWords.welcome.tr,
                  style: AppTextStyle.textStyle30semiBold,
                ),
              ),
              Text(
                AppWords.username.tr,
                style: AppTextStyle.textStyle20medium,
              ),
              CustomTextField(
                  onTap: () {},
                  controller: usernameController,
                  hintText: 'Enter your username',
                  inputType: TextInputType.emailAddress,
                  textFieldValidType: TextFieldValidatorType.Name,
                  currentFocusNode: username,
                  nextFocusNode: passFocus),
              Text(
                AppWords.password.tr,
                style: AppTextStyle.textStyle20medium,
              ),
              CustomTextField(
                  onTap: () {},
                  controller: passwordController,
                  hintText: 'Enter your password',
                  inputType: TextInputType.visiblePassword,
                  obscureText: isAccepted
                      ? true
                      : !isAccepted
                          ? false
                          : true,
                  textFieldValidType: TextFieldValidatorType.Password,
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isAccepted = !isAccepted;
                        });
                      },
                      child: isAccepted
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off)),
                  currentFocusNode: passFocus,
                  nextFocusNode: passFocus),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Switch(
                    activeColor: AppColors.backgroundColor,
                    activeTrackColor: AppColors.primaryColor,
                    value: isAccepted,
                    onChanged: (value) {
                      setState(() {
                        isAccepted = value;
                      });
                    },

                    splashRadius:
                        20, // Increase splash radius for touch feedback
                    materialTapTargetSize: MaterialTapTargetSize
                        .shrinkWrap, // Reduce tap target size
                  ),
                  Text(AppWords.rememberme.tr),
                  SizedBox(
                    width: 40.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      goToScreen(screenNames: ScreenNames.forgetpasswordScreen);
                    },
                    child: Text(AppWords.forgotpassword.tr,
                        style: AppTextStyle.textStyle16medium),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomButton(
                  backgroundColor: AppColors.primaryColor,
                  title: AppWords.signin.tr,
                  titleFontSize: 24,
                  onPress: () {
                    goToScreen(screenNames: ScreenNames.homeScreen);
                  }),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppWords.createaccount.tr,
                      style: AppTextStyle.textStyle20medium
                          .copyWith(color: const Color(0xff4D5F65))),
                  InkWell(
                    onTap: () {
                      goToScreen(screenNames: ScreenNames.registerScreen);
                    },
                    child: Text(
                      AppWords.signup.tr,
                      style: AppTextStyle.textStyle18semiBold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const Divider(
                height: 10,
                endIndent: 60,
                indent: 60,
                thickness: 5,
              )
            ])),
      ),
    );
  }
}
