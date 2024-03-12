import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';

import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isAccepted = true;
  bool confirmAccepted = true;
  List<String> goverments = [
    "mansora",
    "port said",
    "safaga",
    "damietta",
    "hurghada",
    "cairo"
  ];
  var firstname = FocusNode();
  var lastname = FocusNode();
  var username = FocusNode();
  var email = FocusNode();
  var password = FocusNode();

  var confirmpassword = FocusNode();
  var brithDate = FocusNode();
  var goverment = FocusNode();

  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var confirmpasswordController = TextEditingController();
  var firstnameController = TextEditingController();
  var lastnameController = TextEditingController();

  var passwordController = TextEditingController();
  var govermentController = TextEditingController();
  var brithDateController = TextEditingController();
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
    brithDateController.text = DateFormat('yyyy-MM-dd').format(selectedDate);
  }

  Future<void> _selectDate(BuildContext context) async {}

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20)
              .copyWith(),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BackButtonCustom(),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  AppWords.fristname.tr,
                  style: AppTextStyle.textStyle20medium,
                ),
                CustomTextField(
                    obscureText: false,
                    onTap: () {},
                    controller: firstnameController,
                    hintText: 'Enter your fristname',
                    fillColor: AppColors.hintColor,
                    hintStyle: AppTextStyle.textStyle14light,
                    inputType: TextInputType.emailAddress,
                    textFieldValidType: TextFieldValidatorType.Name,
                    currentFocusNode: firstname,
                    nextFocusNode: lastname),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  AppWords.lastname.tr,
                  style: AppTextStyle.textStyle20medium,
                ),
                CustomTextField(
                    obscureText: false,
                    onTap: () {},
                    controller: lastnameController,
                    hintText: 'Enter your lastname',
                    fillColor: AppColors.hintColor,
                    inputType: TextInputType.emailAddress,
                    hintStyle: AppTextStyle.textStyle14light,
                    textFieldValidType: TextFieldValidatorType.Name,
                    currentFocusNode: lastname,
                    nextFocusNode: username),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  AppWords.username.tr,
                  style: AppTextStyle.textStyle20medium,
                ),
                CustomTextField(
                    obscureText: false,
                    onTap: () {},
                    controller: usernameController,
                    hintText: 'Enter your username',
                    fillColor: AppColors.hintColor,
                    hintStyle: AppTextStyle.textStyle14light,
                    inputType: TextInputType.emailAddress,
                    textFieldValidType: TextFieldValidatorType.Name,
                    currentFocusNode: username,
                    nextFocusNode: email),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  AppWords.email.tr,
                  style: AppTextStyle.textStyle20medium,
                ),
                CustomTextField(
                    obscureText: false,
                    onTap: () {},
                    controller: emailController,
                    hintText: 'Enter your Email',
                    fillColor: AppColors.hintColor,
                    inputType: TextInputType.emailAddress,
                    hintStyle: AppTextStyle.textStyle14light,
                    textFieldValidType: TextFieldValidatorType.Email,
                    currentFocusNode: email,
                    nextFocusNode: password),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  AppWords.password.tr,
                  style: AppTextStyle.textStyle20medium,
                ),

                CustomTextField(
                    onTap: () {},
                    controller: passwordController,
                    hintText: 'Enter your password',
                    hintStyle: AppTextStyle.textStyle14light,
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
                    currentFocusNode: password,
                    nextFocusNode: confirmpassword),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  AppWords.confirmpassword.tr,
                  style: AppTextStyle.textStyle20medium,
                ),

                CustomTextField(
                    onTap: () {},
                    controller: confirmpasswordController,
                    hintText: 'Enter your password',
                    hintStyle: AppTextStyle.textStyle14light,
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
                            : const Icon(
                                Icons.visibility,
                              )),
                    currentFocusNode: confirmpassword,
                    nextFocusNode: brithDate),
                // Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                //   Text(
                //     AppWords.birthdate.tr,
                //     style: AppTextStyle.textStyle20medium,
                //   ),
                //   SizedBox(width: .3.sw),
                //   Text(
                //     AppWords.goverment.tr,
                //     style: AppTextStyle.textStyle20medium,
                //   ),
                // ]),
                // Row(children: [
                //   Expanded(
                //     child: CustomTextField(
                //         controller: brithDateController,
                //         readOnly: true,
                //         onTap: () => _selectDate(context),
                //         suffixIcon: const Icon(Icons.calendar_today),
                //         hintText: 'DD/MM/YYYY',
                //         inputType: TextInputType.datetime,
                //         fillColor: AppColors.hintColor,
                //         textFieldValidType: TextFieldValidatorType.Optional,
                //         currentFocusNode: brithDate,
                //         nextFocusNode: goverment),
                //   ),
                //   const SizedBox(
                //     width: 10,
                //   ),
                //   Expanded(
                //     child: StatefulBuilder(
                //       builder: (context, setState) => CustomTextField(
                //         readOnly: true,
                //         controller: govermentController,
                //         onTap: () {},
                //         inputType: TextInputType.streetAddress,
                //         fillColor: AppColors.hintColor,
                //         textFieldValidType: TextFieldValidatorType.Name,
                //         suffixIcon: DropdownButton<String>(
                //           dropdownColor: Colors.white,
                //           underline: const SizedBox.shrink(),
                //           icon: const Icon(
                //             Icons.arrow_drop_down,
                //             color: AppColors.textColor,
                //           ),
                //           items: goverments
                //               .map(
                //                 (e) => DropdownMenuItem<String>(
                //                   value: e,
                //                   child: Container(
                //                       width: 100.w,
                //                       decoration: BoxDecoration(
                //                           borderRadius:
                //                               BorderRadius.circular(50.r)),
                //                       child: Text(
                //                         e,
                //                         style: AppTextStyle.textStyle12regular,
                //                       )),
                //                 ),
                //               )
                //               .toList(),
                //           // value: selectedItem,
                //           onChanged: (value) {
                //             setState(() {
                //               govermentController.text = value!;
                //               print(govermentController.text);
                //             });
                //           },
                //         ),
                //         currentFocusNode: goverment,
                //         nextFocusNode: brithDate,
                //       ),
                //     ),
                //   ),
                // ]),
                const SizedBox(height: 35),
                CustomButton(
                  backgroundColor: AppColors.primaryColor,
                  title: AppWords.signup.tr,
                  style: AppTextStyle.textStyle24medium
                      .copyWith(color: AppColors.backgroundColor),
                  titleFontSize: 24,
                  onPress: () {
                    if (formKey.currentState!.validate()) {
                      goToScreen(screenNames: ScreenNames.bottomNavigationBar);
                    }
                  },
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppWords.account.tr,
                        style: AppTextStyle.textStyle20medium
                            .copyWith(color: const Color(0xff4D5F65))),
                    InkWell(
                      onTap: () {
                        goToScreen(screenNames: ScreenNames.loginScreen);
                      },
                      child: Text(
                        AppWords.signin.tr,
                        style: AppTextStyle.textStyle18semiBold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
