import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';

import 'package:fei_app/view/layout/chats_screen/chats_screen/chat_screen.dart';
import 'package:fei_app/view/layout/home_screen/home_screen.dart';
import 'package:fei_app/view/layout/labs_screen/labs_screen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/doctor_home_screen/doctor_home_screen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/meun_screen/meun_screen2.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/mybooking_screen/mybooking_screen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/patientes_screen/patientes_screen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/profile_screen/profile_screen.dart';

import 'package:fei_app/view/layout/profile_screen/profile_screen.dart';
import 'package:fei_app/view/layout/profile_screen/scan_screen.dart';
import 'package:fei_app/view/layout/profile_screen/widgets/Profile_screen_inbourding.dart';
import 'package:fei_app/view/layout/splash_screen/logo_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const ChatScreen(),
    const LabsScreen(),
    const ScanScreen(),
    const ProfileScreenOnboarding(),
  ];
  final List<Widget> _pagesdoctor = [
    const DoctorHomeScreen(),
    const ChatScreen(),
    const bookingScreen(),
    //const PatientesScreen(),
    MeunScreenDoctor(),
    //const ProfileScreenDoctor(),
    const ProfileScreenOnboarding(),
  ];
  String? message;

  @override
  Widget build(BuildContext context) {
    final dynamic argument = Get.arguments;
    if (argument is String) {
      message = argument;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: argument == Screen.patientScreen
          ? _pages[_selectedIndex]
          : _pagesdoctor[_selectedIndex],
      bottomNavigationBar: ConvexAppBar(
          elevation: 0,
          color: AppColors.textColor,
          curve: Curves.bounceInOut,
          backgroundColor: AppColors.hintColor,
          activeColor: AppColors.backgroundColor,
          style: TabStyle.react,
          items: [
            TabItem(
                icon: _selectedIndex == 0
                    ? const CircleAvatar(
                        radius: 5,
                        backgroundColor: AppColors.backgroundColor,
                        child: Icon(
                          Icons.home,
                          size: 30,
                          color: AppColors.textColor,
                        ),
                      )
                    : const Icon(
                        Icons.home,
                        color: AppColors.textColor,
                      )),
            TabItem(
                icon: _selectedIndex == 1
                    ? CircleAvatar(
                        radius: 5,
                        backgroundColor: AppColors.backgroundColor,
                        child: Image.asset(
                          AppImages.message,
                          color: AppColors.textColor,
                        ))
                    : Image.asset(
                        AppImages.message,
                        color: AppColors.textColor,
                      )),
            TabItem(
                icon: _selectedIndex == 2
                    ? CircleAvatar(
                        radius: 5,
                        backgroundColor: AppColors.backgroundColor,
                        child: Image.asset(
                          argument == Screen.patientScreen
                              ? AppImages.lung
                              : AppImages.mybooking,
                        ))
                    : Image.asset(
                        argument == Screen.patientScreen
                            ? AppImages.lung
                            : AppImages.mybooking,
                        color: AppColors.textColor,
                      )),
            TabItem(
                icon: _selectedIndex == 3
                    ? CircleAvatar(
                        radius: 5,
                        backgroundColor: AppColors.backgroundColor,
                        child: Image.asset(
                          argument == Screen.patientScreen
                              ? AppImages.camerascan
                              : AppImages.menu,
                          color: AppColors.textColor,
                        ))
                    : Image.asset(
                        argument == Screen.patientScreen
                            ? AppImages.camerascan
                            : AppImages.menu,
                        color: AppColors.textColor,
                      )),
            TabItem(
                icon: _selectedIndex == 4
                    ? CircleAvatar(
                        radius: 5,
                        backgroundColor: AppColors.backgroundColor,
                        child: Image.asset(
                          AppImages.profile,
                          color: AppColors.textColor,
                        ))
                    : Image.asset(
                        AppImages.profile,
                        color: AppColors.textColor,
                      )),
          ],
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
