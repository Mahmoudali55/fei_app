import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/doctor_home_screen/widgets/uncomming_appointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: AppColors.backgroundColor,
              elevation: 0,
              leading: const BackButtonCustom(),
              title: Text(
                'Appointments',
              ),
              centerTitle: true,
              bottom: TabBar(
                  labelColor: AppColors.textColor,
                  indicatorColor: AppColors.primaryColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      text: AppWords.upcoming.tr,
                    ),
                    Tab(
                      text: AppWords.completed.tr,
                    ),
                    Tab(
                      text: AppWords.cancelled.tr,
                    )
                  ])),
          body: TabBarView(children: [
            SingleChildScrollView(
              child: Wrap(children: [
                ...List.generate(
                    10,
                    (index) => UnCommingAppointment(
                          confirammassage: () {
                            goToScreen(
                                screenNames: ScreenNames.doctorAppointment);
                          },
                          image: AppImages.doctors,
                          screenNames: ScreenNames.cancelBookScreen,
                          isAccepted: true,
                          titlebutton1: AppWords.rescedual.tr,
                          titlebutton2: AppWords.cancel.tr,
                        )),
              ]),
            ),
            SingleChildScrollView(
              child: Wrap(children: [
                ...List.generate(
                    10,
                    (index) => UnCommingAppointment(
                          image: AppImages.doctors,
                          confirammassage: () {
                            botomsheetreview(context);
                          },
                          screenNames: ScreenNames.messageScreen,
                          isAccepted: false,
                          titlebutton1: AppWords.reviews.tr,
                          titlebutton2: 'message',
                        )),
              ]),
            ),
            SingleChildScrollView(
              child: Wrap(children: [
                ...List.generate(
                    10,
                    (index) => UnCommingAppointment(
                          image: AppImages.doctors,
                          screenNames: ScreenNames.doctorAppointment,
                          confirammassage: () {
                            goToScreen(screenNames: ScreenNames.messageScreen);
                          },
                          isAccepted: false,
                          titlebutton1: 'message',
                          titlebutton2: AppWords.rescedual.tr,
                        )),
              ]),
            ),
          ])),
    );
  }

  Future<dynamic> botomsheetreview(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: 550,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: AppColors.backgroundColor,
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(children: [
                Text('Rate Doctor', style: AppTextStyle.textStyle20bold),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: AppColors.primaryColor.withOpacity(.4),
                  child: Image.asset(
                    AppImages.doctors,
                    width: 60,
                  ),
                ),
                Text(
                  AppWords.doctorsname.tr,
                  style: AppTextStyle.textStyle20medium
                      .copyWith(color: AppColors.textColor),
                ),
                Text(AppWords.locationdoctor.tr,
                    style: AppTextStyle.textStyle16medium
                        .copyWith(color: Colors.grey)),
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemSize: 40,
                  allowHalfRating: true,
                  itemCount: 4,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Nice Experience!',
                  style: AppTextStyle.textStyle16light,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(
                        hintText: 'Type your review ...',
                        border: InputBorder.none),
                  ),
                ),
                CustomButton(
                  onPress: () {},
                  title: AppWords.submit.tr,
                  style: AppTextStyle.textStyle20bold
                      .copyWith(color: AppColors.backgroundColor),
                )
              ]),
            ),
          );
        });
  }
}
