import 'package:fei_app/view/layout/auth/login_screen/login_screen.dart';
import 'package:fei_app/view/layout/auth/register_screen/register_screen.dart';
import 'package:fei_app/view/layout/auth/forgetpassword_screen/forgetpassword_screen.dart';
import 'package:fei_app/view/layout/auth/restpassword_screen/restpassword_screen.dart';
import 'package:fei_app/view/layout/chats_screen/chat_screen.dart';
import 'package:fei_app/view/layout/home_screen/doctors_screen/doctors_screen.dart';
import 'package:fei_app/view/layout/home_screen/home_screen.dart';
import 'package:fei_app/view/layout/labs_screen/labs_screen.dart';
import 'package:fei_app/view/layout/meun_screen/meun_screen.dart';
import 'package:fei_app/view/layout/navagation_screen/navagation_screen.dart';
import 'package:fei_app/view/layout/profile_screen/profile_screen.dart';
import 'package:fei_app/view/layout/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

part 'app_navigator.dart';
//add page routes here

appRoutes(context) {
  var routes = {
    ScreenNames.homeScreen: (context) => const HomeScreen(),
    ScreenNames.splashScreen: (context) => const SplashScreen(),
    ScreenNames.loginScreen: (context) => const LoginScreen(),
    ScreenNames.registerScreen: (context) => const RegisterScreen(),
    ScreenNames.forgetpasswordScreen: (context) => const ForgetPasswordScreen(),
    ScreenNames.restPasswordScreen: (context) => const RestPasswordScreen(),
    ScreenNames.labsScreen: (context) => const LabsScreen(),
    ScreenNames.chatScreen: (context) => const ChatScreen(),
    ScreenNames.meunScreen: (context) => const MeunScreen(),
    ScreenNames.profileScreen: (context) => const ProfileScreen(),
    ScreenNames.bottomNavigationBar: (context) =>
        const BottomNavigationBarScreen(),
    ScreenNames.doctorsScreen: (context) => const DoctorsScreen(),
  };
  return routes;
}

class ScreenNames {
  static const String defaultScreen = "/";
  static const String homeScreen = "homescreen";
  static const String splashScreen = "splashscreen";
  static const String loginScreen = "loginscreen";
  static const String registerScreen = "registerscreen";
  static const String forgetpasswordScreen = "forgetpasswordscreen";
  static const String restPasswordScreen = "restpasswordscreen";
  static const String chatScreen = "chatscreen";
  static const String labsScreen = "labsscreen";
  static const String meunScreen = "meunscreen";
  static const String profileScreen = "profilescreen";
  static const String bottomNavigationBar = "bottomNavigationBar";
  static const String doctorsScreen = "doctorsScreen";
}
