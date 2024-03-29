import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/doctor_home_screen/doctor_home_screen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/doctor_home_screen/widgets/custom_patient_list.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/doctor_home_screen/widgets/uncomming_appointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class bookingScreen extends StatefulWidget {
  const bookingScreen({super.key});

  @override
  State<bookingScreen> createState() => _bookingScreenState();
}

class _bookingScreenState extends State<bookingScreen> {
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
                            confirammassage: () {
                              confirammassage(context);
                            },
                            image: AppImages.patient,
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
                          image: AppImages.patient,
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
                          image: AppImages.patient,
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

  void confirammassage(BuildContext context) {
    return setState(() {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Text('Appointment Confirmed ',
                style: AppTextStyle.textStyle28semiBold
                    .copyWith(color: AppColors.backgroundColor)),
            const Center(
              child: Icon(
                Icons.check_sharp,
                size: 80,
                color: AppColors.textColor,
              ),
            ),
          ],
        ),
      );
      Future.delayed(const Duration(seconds: 3), () {
        goToScreen(screenNames: ScreenNames.prescriptionsScreen);
      });
    });
  }
}
