import 'package:fei_app/helper/model/custom_reminder_model.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_settings.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:fei_app/view/layout/home_screen/medicine_reminder_screen/widgets/custom_gridview.dart';
import 'package:fei_app/view/layout/home_screen/medicine_reminder_screen/widgets/custom_medicine_reminder.dart';
import 'package:fei_app/view/layout/home_screen/medicine_reminder_screen/widgets/dayshort_cut.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MedicineReminder extends StatefulWidget {
  const MedicineReminder({super.key});

  @override
  State<MedicineReminder> createState() => _MedicineReminderState();
}

class _MedicineReminderState extends State<MedicineReminder>
    with TickerProviderStateMixin {
  int _currentPage = 0;

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 7);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<ReminderModel> reminder = [
    ReminderModel(
        onPress: () {
          goToScreen(screenNames: ScreenNames.medicinereminderdetiles);
        },
        title: AppWords.eliquis.tr,
        subtitle: '2 times today',
        image: AppImages.rememberme1),
    ReminderModel(
        title: AppWords.varoxa.tr,
        subtitle: '2 times today',
        image: AppImages.rememberme2),
    ReminderModel(
        title: AppWords.plavix.tr,
        subtitle: '2 times today',
        image: AppImages.rememberme3),
    ReminderModel(
        title: AppWords.anticoagulant.tr,
        subtitle: '2 times today',
        image: AppImages.rememberme1),
    ReminderModel(
        title: AppWords.clopex.tr,
        subtitle: '2 times today',
        image: AppImages.rememberme2),
    ReminderModel(
        title: AppWords.aspocid.tr,
        subtitle: '2 times today',
        image: AppImages.rememberme1),
  ];
  String? message;
  @override
  Widget build(BuildContext context) {
    final dynamic argument = Get.arguments;

    if (argument is String) {
      message = argument;
    }
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        floatingActionButton: argument == 'doctor'
            ? FloatingActionButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        // height: 562.h,
                        width: 430.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        padding: const EdgeInsets.all(16.0),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                children: [
                                  Text(
                                    AppWords.addNewMedicine.tr,
                                    style: AppTextStyle.textStyle24bold,
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    icon: const Icon(
                                      Icons.close,
                                    ),
                                  )
                                ],
                              ),
                              TextFormField(
                                  decoration: InputDecoration(
                                label: Text(AppWords.name.tr),
                              )),
                              TextFormField(
                                  decoration: InputDecoration(
                                label: Text(AppWords.dose.tr),
                              )),
                              TextFormField(
                                  decoration: InputDecoration(
                                label: Text(AppWords.pillDosage.tr),
                              )),
                              TextFormField(
                                  decoration: InputDecoration(
                                label: Text(AppWords.program.tr),
                              )),
                              const SizedBox(height: 10.0),
                              Text(
                                AppWords.shape.tr,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      AppImages.rememberme1,
                                      color: Colors.grey,
                                    ),
                                    Image.asset(
                                      AppImages.rememberme2,
                                      color: Colors.grey,
                                    ),
                                    Image.asset(
                                      AppImages.rememberme3,
                                      color: Colors.grey,
                                    ),
                                  ]),
                              const SizedBox(height: 50.0),
                              CustomButton(
                                title: 'Add',
                                style: AppTextStyle.textStyle20bold
                                    .copyWith(color: AppColors.backgroundColor),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                backgroundColor: AppColors.textColor,
                shape: CircleBorder(),
                child: const Icon(
                  Icons.add,
                  color: AppColors.backgroundColor,
                ),
              )
            : SizedBox(),
        backgroundColor: AppColors.primaryColor,
        body: SingleChildScrollView(
          child: Column(children: [
            const CustomMedicineReminder(),
            Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: Column(children: [
                  TabBar(
                      splashBorderRadius: BorderRadius.circular(15),
                      splashFactory: NoSplash.splashFactory,
                      indicatorColor: AppColors.textColor,
                      labelStyle: AppTextStyle.textStyle16semiBold,
                      labelPadding: const EdgeInsets.symmetric(horizontal: 5),
                      indicatorSize: TabBarIndicatorSize.tab,
                      padding: const EdgeInsets.all(10),

                      //controller: _tabController,
                      labelColor: AppColors.textColor,
                      onTap: (index) {
                        setState(() {
                          _currentPage = index;
                        });
                      },
                      tabs: [
                        Tab(
                          text: AppWords.sat.tr,
                        ),
                        Tab(
                          text: AppWords.sun.tr,
                        ),
                        Tab(
                          text: AppWords.mon.tr,
                        ),
                        Tab(
                          text: AppWords.tue.tr,
                        ),
                        Tab(
                          text: AppWords.wed.tr,
                        ),
                        Tab(
                          text: AppWords.thu.tr,
                        ),
                        Tab(
                          text: AppWords.fri.tr,
                        ),
                      ]),
                  Expanded(
                    child: TabBarView(children: [
                      Column(
                        children: [
                          Expanded(
                            child: GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 1,
                                  mainAxisSpacing: .5,
                                  childAspectRatio: 1.5,
                                ),
                                itemCount: 6,
                                itemBuilder: (BuildContext context, int index) {
                                  return CustomGridView(
                                    reminder: reminder[index],
                                  );
                                }),
                          ),
                          argument == 'doctor'
                              ? CustomButton(
                                  onPress: () {
                                    goToScreen(
                                        screenNames:
                                            ScreenNames.prescriptionScreen);
                                  },
                                  title: 'Create prescription',
                                  style: AppTextStyle.textStyle20bold.copyWith(
                                      color: AppColors.backgroundColor),
                                )
                              : SizedBox(),
                          const SizedBox(height: 5),
                        ],
                      ),
                      Container(
                        child: const Center(child: Text('sunday')),
                      ),
                      Container(
                        child: const Center(child: Text('manday')),
                      ),
                      Container(
                        child: const Center(child: Text('tuesday')),
                      ),
                      Container(
                        child: const Center(child: Text('wednesday')),
                      ),
                      Container(
                        child: const Center(child: Text('thursday')),
                      ),
                      Container(
                        child: const Center(child: Text('friday')),
                      ),
                    ]),
                  )
                ]))
          ]),
        ),
      ),
    );
  }
}
