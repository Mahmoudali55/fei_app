import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/view/layout/chats_screen/chat_screen.dart';
import 'package:fei_app/view/layout/home_screen/home_screen.dart';
import 'package:fei_app/view/layout/labs_screen/labs_screen.dart';
import 'package:fei_app/view/layout/meun_screen/meun_screen.dart';
import 'package:fei_app/view/layout/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

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
    const MeunScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
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
                          AppImages.lung,
                        ))
                    : Image.asset(
                        AppImages.lung,
                        color: AppColors.textColor,
                      )),
            TabItem(
                icon: _selectedIndex == 3
                    ? CircleAvatar(
                        radius: 5,
                        backgroundColor: AppColors.backgroundColor,
                        child: Image.asset(
                          AppImages.menu,
                          color: AppColors.textColor,
                        ))
                    : Image.asset(
                        AppImages.menu,
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
