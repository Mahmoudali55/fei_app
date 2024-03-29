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
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/medicine_reminder_screen/widgets/custom_gridview.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/medicine_reminder_screen/widgets/custom_medicine_reminder.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/patientes_screen/patientes_screen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/payment_history/payment_history.dart';
import 'package:fei_app/view/layout/meun_screen/payment_history/payment_history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MedicineReminderDoctor extends StatefulWidget {
  const MedicineReminderDoctor({super.key});

  @override
  State<MedicineReminderDoctor> createState() => _MedicineReminderDoctorState();
}

class _MedicineReminderDoctorState extends State<MedicineReminderDoctor>
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
          goToScreen(
              screenNames: ScreenNames.medicineReminder, arguments: 'doctor');
        },
        title: AppWords.patientName.tr,
        subtitle: 'Alex',
        image: AppImages.patient),
    ReminderModel(
        title: AppWords.patientName.tr,
        subtitle: 'Alex',
        image: AppImages.patient),
    ReminderModel(
        title: AppWords.patientName.tr,
        subtitle: 'Alex',
        image: AppImages.patient),
    ReminderModel(
        title: AppWords.patientName.tr,
        subtitle: 'Alex',
        image: AppImages.patient),
    ReminderModel(
        title: AppWords.patientName.tr,
        subtitle: 'Alex',
        image: AppImages.patient),
    ReminderModel(
        title: AppWords.patientName.tr,
        subtitle: 'Alex',
        image: AppImages.patient),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: AppColors.backgroundColor,
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              BackButtonCustom(),
                              SizedBox(
                                width: 130,
                              ),
                              Text(
                                AppWords.patients.tr,
                                style: AppTextStyle.textStyle24bold,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          const Divider(),
                          Wrap(
                            direction: Axis.horizontal,
                            children: [
                              ...List.generate(
                                  10,
                                  (index) => Card(
                                        color: AppColors.backgroundColor,
                                        elevation: 10,
                                        shadowColor: AppColors.secondaryColor,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        child: Container(
                                            padding: EdgeInsets.all(10.h),
                                            height: 127.h,
                                            decoration: BoxDecoration(
                                                color:
                                                    AppColors.backgroundColor,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                    color:
                                                        AppColors.primaryColor,
                                                    width: 2)),
                                            child: ListTile(
                                                onTap: () {},
                                                leading: Image.asset(
                                                    AppImages.patient),
                                                title: Text(
                                                  AppWords.patientName.tr,
                                                  style: AppTextStyle
                                                      .textStyle20bold,
                                                ),
                                                subtitle: const Text(
                                                  ' 25,6, 2024 ',
                                                ))),
                                      )),
                            ],
                          )
                        ],
                      ),
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
        ),
        backgroundColor: AppColors.primaryColor,
        body: SingleChildScrollView(
          child: Column(children: [
            const CustomMedicineReminderPlan(),
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
                      GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 1,
                            mainAxisSpacing: .5,
                            childAspectRatio: 1.5,
                          ),
                          itemCount: 6,
                          itemBuilder: (BuildContext context, int index) {
                            return CustomGridViewPlan(
                              reminder: reminder[index],
                            );
                          }),
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
