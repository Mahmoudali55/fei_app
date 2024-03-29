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

class MeunScreenDoctor extends StatefulWidget {
  MeunScreenDoctor({super.key});

  @override
  State<MeunScreenDoctor> createState() => _MeunScreenDoctorState();
}

class _MeunScreenDoctorState extends State<MeunScreenDoctor> {
  @override
  String groupValue = '';
  bool click = false;
  bool clicklang = false;
  bool clicklang2 = true;
  int selected = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(children: [
                const BackButtonCustom(),
                SizedBox(width: 170.w),
                Text(AppWords.menu.tr, style: AppTextStyle.textStyle24bold),
              ]),
              SizedBox(height: 15.h),
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
                image: AppImages.notifcationIcon,
                title: AppWords.notifcation.tr,
                color: Colors.grey[500],
                active: false,
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
                        'payment history',
                        style: AppTextStyle.textStyle16regular,
                      ),
                      trailing: InkWell(
                          onTap: () {
                            goToScreen(
                                screenNames: ScreenNames.paymentHistoryScreen);
                          },
                          child: Image.asset(AppImages.arrowForward)),
                    ),
                  ])),
              ItemDrawer(
                image: AppImages.settingIcon,
                title: AppWords.settings.tr,
                color: Colors.grey[400],
                widget: Column(children: [
                  ItemDrawer(title: AppWords.setting, image: AppImages.profile),
                  ExpansionTile(
                      title: Text(AppWords.language.tr,
                          style: AppTextStyle.textStyle16regular),
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
                                        clicklang2 = !clicklang2;
                                        selected = 0;
                                      });
                                    },
                                    child: clicklang2 && selected == 0
                                        ? Row(
                                            children: [
                                              Text(AppWords.english.tr,
                                                  style: AppTextStyle
                                                      .textStyle14medium),
                                              SizedBox(width: 100.w),
                                              Icon(
                                                Icons.check,
                                                color: AppColors.textColor,
                                              )
                                            ],
                                          )
                                        : Text(
                                            AppWords.english.tr,
                                            style: AppTextStyle
                                                .textStyle14medium
                                                .copyWith(color: Colors.grey),
                                          )),
                                SizedBox(height: 10.h),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        clicklang2 = !clicklang2;
                                        selected = 1;
                                      });
                                    },
                                    child: clicklang2 && selected == 1
                                        ? Row(
                                            children: [
                                              Text(AppWords.arabic.tr,
                                                  style: AppTextStyle
                                                      .textStyle14medium),
                                              SizedBox(width: 100.w),
                                              Icon(
                                                Icons.check,
                                                color: AppColors.textColor,
                                              )
                                            ],
                                          )
                                        : Text(
                                            AppWords.arabic.tr,
                                            style: AppTextStyle
                                                .textStyle14medium
                                                .copyWith(color: Colors.grey),
                                          ))
                              ]),
                        ),
                      ]),
                  ExpansionTile(
                      title: Text(
                        AppWords.mode.tr,
                        style: AppTextStyle.textStyle16regular,
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
                                        ? AppTextStyle.textStyle16medium
                                        : AppTextStyle.textStyle16medium
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
                image: AppImages.helpIcon,
                title: AppWords.helpandsupport.tr,
                color: AppColors.textColor,
              ),
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
              CustomMenuButton(),
            ],
          ),
        ),
      ),
    );
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
        title: Text(widget.title),
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
