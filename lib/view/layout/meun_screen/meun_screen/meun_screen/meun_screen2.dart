import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/layout/meun_screen/meun_screen/widgets/custom_menu_button.dart';
import 'package:fei_app/view/layout/meun_screen/meun_screen/widgets/menu_profile_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MeunScreen extends StatefulWidget {
  const MeunScreen({super.key});

  @override
  State<MeunScreen> createState() => _MeunScreenState();
}

class _MeunScreenState extends State<MeunScreen> {
  @override
  String groupValue = '';
  bool click = false;
  bool clicklang = false;
  bool clicklang2 = true;
  int selected = 0;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          surfaceTintColor: AppColors.backgroundColor,
          elevation: 0,
          leading: const BackButtonCustom(),
          centerTitle: true,
          title: Text(AppWords.menu.tr, style: AppTextStyle.textStyle24bold),
        ),
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              MenuProfileItem(
                title: AppWords.username.tr,
                subTitle: AppWords.email.tr,
              ),
              const Divider(
                thickness: .5,
                color: AppColors.textColor,
                indent: 15,
                endIndent: 15,
              ),
              ItemDrawer(
                image: AppImages.rememberme1,
                title: AppWords.medicines.tr,
                color: AppColors.primaryColor,
                onTap: () {
                  Get.toNamed(ScreenNames.medicineReminder);
                },
              ),
              ItemDrawer(
                  image: AppImages.helpIcon,
                  title: AppWords.helpandsupport.tr,
                  color: AppColors.textColor,
                  widget: Column(
                    children: [
                      ListTile(
                        title: Text(
                          AppWords.legalandPolicies.tr,
                          style: AppTextStyle.textStyle18regular,
                        ),
                        trailing: Image.asset(AppImages.arrowForward),
                      ),
                      ListTile(
                        title: Text(
                          AppWords.rportTechnicalProblem.tr,
                          style: AppTextStyle.textStyle16regular,
                        ),
                        trailing: Image.asset(AppImages.arrowForward),
                      ),
                      ListTile(
                        title: Text(
                          AppWords.helpCenter.tr,
                          style: AppTextStyle.textStyle18regular,
                        ),
                        trailing: InkWell(
                            onTap: () {
                              goToScreen(
                                  screenNames: ScreenNames.helpCenterScreen);
                            },
                            child: Image.asset(AppImages.arrowForward)),
                      )
                    ],
                  )),
              ItemDrawer(
                image: AppImages.aboutIcon,
                title: AppWords.about.tr,
                color: Colors.grey[500],
              ),
              ItemDrawer(
                image: AppImages.shareIcon,
                title: AppWords.sharewithfriends.tr,
                color: Colors.grey[500],
              ),
              ItemDrawer(
                image: AppImages.notifcationIcon,
                title: AppWords.notifcation.tr,
                color: Colors.grey[500],
                active: false,
              ),
              ItemDrawer(
                image: AppImages.fAQIcon,
                title: AppWords.fAQ.tr,
                color: Colors.grey[500],
              ),
              ItemDrawer(
                image: AppImages.starIcon,
                title: AppWords.applicationRate.tr,
              ),
              ItemDrawer(
                  image: AppImages.paymentIcon,
                  title: 'payment',
                  color: AppColors.primaryColor,
                  widget: Column(children: [
                    ListTile(
                      title: Text(
                        AppWords.paymentMethod.tr,
                        style: AppTextStyle.textStyle18regular,
                      ),
                      trailing: InkWell(
                          onTap: () {
                            goToScreen(screenNames: ScreenNames.paymentMethod);
                          },
                          child: Image.asset(AppImages.arrowForward)),
                    ),
                    ListTile(
                      title: Text(
                        'payment history',
                        style: AppTextStyle.textStyle18regular,
                      ),
                      trailing: InkWell(
                          onTap: () {
                            goToScreen(screenNames: ScreenNames.paymentHistory);
                          },
                          child: Image.asset(AppImages.arrowForward)),
                    ),
                  ])),
              ItemDrawer(
                image: AppImages.history,
                title: AppWords.medicalHistory.tr,
                widget: Column(children: [
                  ListTile(
                    title: Text(
                      AppWords.scanhistory.tr,
                      style: AppTextStyle.textStyle18regular,
                    ),
                    trailing: InkWell(
                        onTap: () {
                          goToScreen(screenNames: ScreenNames.labResultScreen);
                        },
                        child: Image.asset(AppImages.arrowForward)),
                  ),
                  ListTile(
                    title: Text(
                      AppWords.test.tr,
                      style: AppTextStyle.textStyle18regular,
                    ),
                    trailing: InkWell(
                        onTap: () {
                          goToScreen(screenNames: ScreenNames.healthTestScreen);
                        },
                        child: Image.asset(AppImages.arrowForward)),
                  ),
                  ListTile(
                    title: Text(
                      AppWords.protection.tr,
                      style: AppTextStyle.textStyle18regular,
                    ),
                    trailing: InkWell(
                        onTap: () {
                          goToScreen(
                              screenNames: ScreenNames.prescriptionsScreen);
                        },
                        child: Image.asset(AppImages.arrowForward)),
                  ),
                ]),
              ),
              ItemDrawer(
                image: AppImages.settingIcon,
                title: AppWords.settings.tr,
                color: Colors.grey[400],
                widget: Column(children: [
                  ItemDrawer(title: AppWords.setting, image: AppImages.profile),
                  ExpansionTile(
                      title: Text(AppWords.language.tr,
                          style: AppTextStyle.textStyle18regular),
                      onExpansionChanged: (clicklang) {
                        setState(() {
                          clicklang = !clicklang;
                        });
                      },
                      collapsedShape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      shape: ContinuousRectangleBorder(),
                      trailing: Image.asset(
                        (clicklang == false)
                            ? AppImages.arrowForward
                            : AppImages.arrowDown,
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        selected = 0;
                                        clicklang2 = !clicklang2;
                                        Get.updateLocale(Locale('en'));
                                      });
                                    },
                                    child: clicklang2 && selected == 0
                                        ? Row(
                                            children: [
                                              Text(AppWords.english.tr,
                                                  style: AppTextStyle
                                                      .textStyle18medium),
                                              SizedBox(width: 100.w),
                                              Icon(
                                                Icons.check,
                                                color: AppColors.textColor,
                                              )
                                            ],
                                          )
                                        : Row(
                                            children: [
                                              Text(
                                                AppWords.english.tr,
                                                style: AppTextStyle
                                                    .textStyle18medium
                                                    .copyWith(
                                                        color: Colors.grey),
                                              ),
                                            ],
                                          )),
                                SizedBox(height: 10.h),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        clicklang2 = !clicklang2;
                                        selected = 1;
                                        Get.updateLocale(Locale('ar'));
                                      });
                                    },
                                    child: clicklang2 && selected == 1
                                        ? Row(
                                            children: [
                                              Text(AppWords.arabic.tr,
                                                  style: AppTextStyle
                                                      .textStyle18medium),
                                              SizedBox(width: 100.w),
                                              Icon(
                                                Icons.check,
                                                color: AppColors.textColor,
                                              )
                                            ],
                                          )
                                        : Row(
                                            children: [
                                              Text(
                                                AppWords.arabic.tr,
                                                style: AppTextStyle
                                                    .textStyle18medium
                                                    .copyWith(
                                                        color: Colors.grey),
                                              ),
                                            ],
                                          ))
                              ]),
                        ),
                      ]),
                  ExpansionTile(
                      title: Text(
                        AppWords.mode.tr,
                        style: AppTextStyle.textStyle18regular,
                      ),
                      onExpansionChanged: (clik) {
                        setState(() {
                          click = !click;
                        });
                      },
                      collapsedShape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      shape: ContinuousRectangleBorder(),
                      trailing: Image.asset(
                        (click == false)
                            ? AppImages.arrowForward
                            : AppImages.arrowDown,
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(children: [
                            Column(children: [
                              Row(children: [
                                Text('Light',
                                    style: groupValue == 'light'
                                        ? AppTextStyle.textStyle18medium
                                        : AppTextStyle.textStyle18medium
                                            .copyWith(color: Colors.grey)),
                                Radio(
                                    activeColor: AppColors.primaryColor,
                                    value: 'light',
                                    groupValue: groupValue,
                                    onChanged: (Val) {
                                      setState(() {
                                        groupValue = Val.toString();
                                      });
                                    })
                              ]),
                              Row(children: [
                                Text('Dark',
                                    style: groupValue == 'dark'
                                        ? AppTextStyle.textStyle16medium
                                        : AppTextStyle.textStyle16medium
                                            .copyWith(color: Colors.grey)),
                                Radio(
                                    activeColor: AppColors.primaryColor,
                                    value: 'dark',
                                    groupValue: groupValue,
                                    onChanged: (Val) {
                                      setState(() {
                                        groupValue = Val.toString();
                                      });
                                    })
                              ])
                            ])
                          ]),
                        )
                      ])
                ]),
              ),
              ItemDrawer(
                image: AppImages.appointment,
                onTap: () {
                  goToScreen(screenNames: ScreenNames.appointmentScreen);
                },
                title: AppWords.appoinments.tr,
                color: Colors.grey[400],
              ),
              CustomMenuButton(),
            ],
          ),
        ));
  }
}

class ItemDrawer extends StatefulWidget {
  const ItemDrawer({
    super.key,
    required this.title,
    required this.image,
    this.onTap,
    this.color,
    this.active,
    this.widget,
  });
  final String title;

  final String image;
  final Function()? onTap;
  final Color? color;
  final bool? active;
  final Widget? widget;

  @override
  State<ItemDrawer> createState() => _ItemDrawerState();
}

class _ItemDrawerState extends State<ItemDrawer> {
  bool isActive = false;
  bool click = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        collapsedShape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        shape: ContinuousRectangleBorder(),
        onExpansionChanged: (clik) {
          setState(() {
            click = !click;
          });
        },
        leading: Image.asset(
          widget.image,
          color: widget.color,
        ),
        title: Text(
          widget.title,
          style: AppTextStyle.textStyle20medium,
        ),
        trailing: widget.active ?? true
            ? InkWell(
                onTap: widget.onTap,
                child: Image.asset(
                  (click == false)
                      ? AppImages.arrowForward
                      : AppImages.arrowDown,
                ),
              )
            : Transform.scale(
                scale: 0.6,
                child: CupertinoSwitch(
                  value: isActive,
                  onChanged: (bool value) {
                    setState(() {
                      isActive = value;
                    });
                  },
                ),
              ),
        children: [widget.widget ?? SizedBox()]);
  }
}
