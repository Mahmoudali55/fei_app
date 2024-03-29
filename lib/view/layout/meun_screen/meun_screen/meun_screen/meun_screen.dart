// import 'package:fei_app/helper/routes/routes.dart';
// import 'package:fei_app/helper/utils/app_colors.dart';
// import 'package:fei_app/helper/utils/app_images.dart';
// import 'package:fei_app/helper/utils/app_textstyle.dart';
// import 'package:fei_app/helper/utils/app_word.dart';
// import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
// import 'package:fei_app/view/layout/meun_screen/meun_screen/meun_screen/widgets/menu_item.dart';

// import 'package:fei_app/view/layout/meun_screen/meun_screen/widgets/custom_menu_button.dart';
// import 'package:fei_app/view/layout/meun_screen/meun_screen/widgets/menu_profile_item.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// class MeunScreen extends StatefulWidget {
//   const MeunScreen({super.key});

//   @override
//   State<MeunScreen> createState() => _MeunScreenState();
// }

// class _MeunScreenState extends State<MeunScreen> {
//   int selected = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: AppColors.backgroundColor,
//       //     shape: Border.all(color: Colors.white),
//       //     child: Scaffold(
//       //       backgroundColor: AppColors.backgroundColor,
//       //       appBar: AppBar(
//       //         backgroundColor: Colors.transparent,
//       //         elevation: 0,
//       //         scrolledUnderElevation: 0,
//       //         title: Text(AppWords.menu.tr, style: AppTextStyle.textStyle25bold),
//       //         centerTitle: true,
//       //         leading: const BackButtonCustom(),
//       //       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height,
//           child: ListView(
//             children: [
//               Row(
//                 children: [
//                   const BackButtonCustom(),
//                   SizedBox(width: 120.w),
//                   Text(AppWords.menu.tr, style: AppTextStyle.textStyle20bold),
//                 ],
//               ),
//               SizedBox(height: 5.h),
//               MenuProfileItem(
//                 title: AppWords.username.tr,
//                 subTitle: AppWords.email.tr,
//               ),
//               const Divider(
//                 thickness: 1,
//                 height: 20,
//               ),
//               MenuItem(
//                 title: AppWords.medicines.tr,
//                 image: AppImages.medicineIcon,
//                 imagecolor: AppColors.primaryColor,
//                 textStyle: AppTextStyle.textStyle18regular,
//               ),
//               ExpandedMenuItem(
//                 title: AppWords.helpandsupport.tr,
//                 image: AppImages.helpIcon,
//                 color: AppColors.hintColor,
//                 children: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     MenuItem(
//                       title: AppWords.legalandPolicies.tr,
//                       color: AppColors.hintColor,
//                       textStyle: AppTextStyle.textStyle16regular,
//                     ),
//                     MenuItem(
//                         title: AppWords.rportTechnicalProblem.tr,
//                         color: AppColors.hintColor,
//                         textStyle: AppTextStyle.textStyle16regular),
//                     MenuItem(
//                         onTap: () {
//                           goToScreen(screenNames: ScreenNames.helpCenterScreen);
//                         },
//                         title: AppWords.helpCenter.tr,
//                         color: AppColors.hintColor,
//                         textStyle: AppTextStyle.textStyle16regular),
//                   ],
//                 ),
//               ),
//               MenuItem(
//                 title: AppWords.about.tr,
//                 image: AppImages.aboutIcon,
//                 textStyle: AppTextStyle.textStyle20regular,
//               ),
//               MenuItem(
//                 title: AppWords.sharewithfriends.tr,
//                 image: AppImages.shareIcon,
//                 textStyle: AppTextStyle.textStyle18regular,
//               ),
//               NotificationMenuItem(
//                 title: AppWords.notifcation.tr,
//                 image: AppImages.notifcationIcon,
//               ),
//               MenuItem(
//                 title: AppWords.fAQ.tr,
//                 image: AppImages.fAQIcon,
//                 textStyle: AppTextStyle.textStyle18regular,
//               ),
//               InkWell(
//                 onDoubleTap: () {
//                   goToScreen(screenNames: ScreenNames.appRateScreen);
//                 },
//                 child: MenuItem(
//                   title: AppWords.applicationRate.tr,
//                   image: AppImages.starIcon,
//                   textStyle: AppTextStyle.textStyle18regular,
//                 ),
//               ),
//               MenuItem(
//                 onTap: () {
//                   goToScreen(screenNames: ScreenNames.paymentMethod);
//                 },
//                 title: AppWords.paymentMethod.tr,
//                 image: AppImages.paymentIcon,
//                 textStyle: AppTextStyle.textStyle18regular,
//               ),
//               ExpandedMenuItem(
//                 title: AppWords.medicalHistory.tr,
//                 image: AppImages.history,
//                 color: const Color(0xffD9D9D9).withOpacity(.4),
//                 children: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     MenuItem(
//                       title: AppWords.scanhistory.tr,
//                       color: const Color(0xffD9D9D9).withOpacity(.4),
//                       textStyle: AppTextStyle.textStyle16regular,
//                     ),
//                     MenuItem(
//                         title: AppWords.test.tr,
//                         color: AppColors.hintColor,
//                         textStyle: AppTextStyle.textStyle16regular),
//                     MenuItem(
//                         title: AppWords.prescription.tr,
//                         color: const Color(0xffD9D9D9).withOpacity(.4),
//                         textStyle: AppTextStyle.textStyle16regular),
//                   ],
//                 ),
//               ),
//               ExpandedMenuItem(
//                 title: AppWords.setting.tr,
//                 image: AppImages.settingIcon,
//                 color: AppColors.backgroundColor,
//                 children: Column(
//                   children: [
//                     MenuItem(
//                       title: AppWords.setting.tr,
//                       color: const Color(0xffD9D9D9).withOpacity(.4),
//                       textStyle: AppTextStyle.textStyle18regular,
//                       image: AppImages.profile,
//                     ),
//                     ExpandedMenuItem(
//                         title: AppWords.language.tr,
//                         color: const Color(0xffD9D9D9).withOpacity(.4),
//                         children: Container(
//                           alignment: Alignment.topLeft,
//                           child: Column(
//                             children: [
//                               CustomRadio('English', 1, () {
//                                 setState(() {
//                                   Get.updateLocale(const Locale('en'));
//                                 });
//                               }),
//                               CustomRadio('Arabic', 2, () {
//                                 setState(() {
//                                   Get.updateLocale(const Locale('ar'));
//                                 });
//                               })
//                             ],
//                           ),
//                         )),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const CustomMenuButton(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget CustomRadio(String text, int index, Function()? onTap) {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           selected = index;
//         });
//       },
//       child: Container(
//         margin: const EdgeInsets.symmetric(vertical: 5),
//         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//         width: 150,
//         decoration: BoxDecoration(
//             color: const Color(0xffD9D9D9).withOpacity(.4),
//             borderRadius: BorderRadius.circular(5)),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             GestureDetector(
//               onTap: onTap,
//               child: Text(
//                 text,
//                 style: TextStyle(
//                     color: (selected == index) ? Colors.black : Colors.grey,
//                     fontSize: 14),
//               ),
//             ),
//             Icon(
//               (selected == index) ? Icons.check : null,
//               color: Colors.black,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
