import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/doctor_home_screen/doctor_home_screen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/doctor_home_screen/widgets/custom_patient_list.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/doctor_home_screen/widgets/uncomming_appointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class bookingScreen extends StatelessWidget {
  const bookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: const BackButtonCustom(),
              elevation: 0,
              centerTitle: true,
              title: Text(
                AppWords.myBooking.tr,
              )),
          body: Column(children: [
            TabBar(indicatorColor: AppColors.primaryColor, tabs: [
              Tab(
                  child: Text(
                AppWords.upcoming.tr,
                style: AppTextStyle.textStyle16medium,
              )),
              Tab(
                child: Text(
                  AppWords.completed.tr,
                  style: AppTextStyle.textStyle16medium,
                ),
              ),
              Tab(
                child: Text(
                  AppWords.cancelled.tr,
                  style: AppTextStyle.textStyle16medium,
                ),
              )
            ]),
            Expanded(
                child: TabBarView(children: [
              SingleChildScrollView(
                child: Wrap(children: [
                  ...List.generate(
                      10,
                      (index) => UnCommingAppointment(
                            screenNames: '',
                            isAccepted: true,
                            titlebutton1: AppWords.confirm.tr,
                            titlebutton2: AppWords.cancel.tr,
                          )),
                ]),
              ),
              SingleChildScrollView(
                  child: Wrap(children: [
                ...List.generate(
                    10,
                    (index) => UnCommingAppointment(
                          screenNames: '',
                          isAccepted: false,
                          titlebutton1: AppWords.addComment.tr,
                          titlebutton2: AppWords.addPlan.tr,
                        )),
              ])),
              SingleChildScrollView(
                  child: Wrap(children: [
                ...List.generate(
                    10,
                    (index) => UnCommingAppointment(
                          screenNames: '',
                          isAccepted: false,
                          titlebutton1: AppWords.addComment.tr,
                          titlebutton2: AppWords.rescedual.tr,
                        )),
              ])),
            ]))
          ])),
    );
  }
}
