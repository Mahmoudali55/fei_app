// import 'package:fei_app/helper/model/custom_pharmacy_model.dart';
// import 'package:fei_app/helper/model/custom_pharmcy%20_type_model.dart';
// import 'package:fei_app/helper/utils/app_colors.dart';
// import 'package:fei_app/helper/utils/app_images.dart';
// import 'package:fei_app/helper/utils/app_textstyle.dart';
// import 'package:fei_app/helper/utils/validator.dart';
// import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
// import 'package:fei_app/view/customs_widgets/custom_card_pharmacy/custom_card_pharmacy.dart';
// import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
// import 'package:fei_app/view/layout/Pharmacy%20_screen/widgets/custom_onbourding.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomPharmacyScreen extends StatelessWidget {
//   const CustomPharmacyScreen({
//     super.key,
//     required this.pharmacyTypeModel,
//     required this.currentPage,
//   });
//   final PharmacyTypeModel pharmacyTypeModel;
//   final int currentPage;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
//         child: Column(children: [
//           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//             const BackButtonCustom(),
//             Text(
//               pharmacyTypeModel.text,
//               style: AppTextStyle.textStyle20bold,
//             ),
//             const Icon(Icons.shopping_cart, color: AppColors.textColor),
//           ]),
//           SizedBox(
//             height: 40.h,
//           ),
//           CustomTextField(
//             onTap: () {},
//             fieldWidth: 450.w,
//             currentFocusNode: FocusNode(),
//             nextFocusNode: FocusNode(),
//             fillColor: AppColors.hintColor,
//             hintText: 'search for a drug ?',
//             inputType: TextInputType.text,
//             textFieldValidType: TextFieldValidatorType.Optional,
//             prefixIcon: AppImages.searchIcon,
//           ),
//           SizedBox(
//             height: 20.h,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//                 3,
//                 (index) => CustomOnbourdingPhrmacy(
//                       isActive: index == currentPage,
//                       text: pharmacyTypeModel.text2,
//                     )),
//           ),
//           Column(
//             children: [
//               ...List.generate(
//                   10,
//                   (index) => CustomCardpharmacy(
//                         pharmacyModel: PharmacyModel(
//                             image: pharmacyTypeModel.image,
//                             title: pharmacyTypeModel.text3,
//                             price: pharmacyTypeModel.price),
//                       )),
//             ],
//           )
//         ]));
//   }
// }
