import 'package:fei_app/view/customs_widgets/custom_logo/Custom_logo.dart';
import 'package:fei_app/view/layout/Pharmacy%20_screen/card_screen.dart';
import 'package:fei_app/view/layout/Pharmacy%20_screen/home_health_screen/home_health_screen.dart';
import 'package:fei_app/view/layout/Pharmacy%20_screen/medications_screen/medications_screen.dart';
import 'package:fei_app/view/layout/Pharmacy%20_screen/pharmacy_profile_screen.dart';
import 'package:fei_app/view/layout/Pharmacy%20_screen/pharmacy_screen.dart';
import 'package:fei_app/view/layout/Pharmacy%20_screen/vitamins_screen/vitamin_screen.dart';
import 'package:fei_app/view/layout/auth/login_screen/login_screen.dart';
import 'package:fei_app/view/layout/auth/register_screen/register_screen.dart';
import 'package:fei_app/view/layout/auth/forgetpassword_screen/forgetpassword_screen.dart';
import 'package:fei_app/view/layout/auth/restpassword_screen/restpassword_screen.dart';

import 'package:fei_app/view/layout/chats_screen/chats_screen/chat_screen.dart';
import 'package:fei_app/view/layout/chats_screen/chats_screen/message_screen.dart/message_screen.dart';
import 'package:fei_app/view/layout/health_test_screen/health_test_screen/health_test_result_screen/health_test_result_screen.dart';
import 'package:fei_app/view/layout/health_test_screen/health_test_screen/health_test_screen.dart';
import 'package:fei_app/view/layout/home_screen/doctor_profile_screen/doctor_profile_screen.dart';
import 'package:fei_app/view/layout/home_screen/doctors_screen/doctor_appointment.dart';
import 'package:fei_app/view/layout/home_screen/doctors_screen/doctors_screen.dart';
import 'package:fei_app/view/layout/home_screen/home_screen.dart';
import 'package:fei_app/view/layout/home_screen/lab_profile_screen/lab_profile_screen.dart';
import 'package:fei_app/view/layout/home_screen/medicine_reminder_screen/medicine_reminder_detiles.dart';
import 'package:fei_app/view/layout/home_screen/medicine_reminder_screen/medicine_reminder.dart';
import 'package:fei_app/view/layout/home_screen/notification_screen/notifaction_screen.dart';
import 'package:fei_app/view/layout/labs_screen/lab_appointment.dart';
import 'package:fei_app/view/layout/labs_screen/labs_screen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/cancel_screen/cancel_sceeen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/doctor_home_screen/doctor_home_screen.dart';

import 'package:fei_app/view/layout/layout_doctors/doctor_screens/hospitals_screen/hospital_screen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/lab_result_screen/lab_resulut_screen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/mybooking_screen/mybooking_screen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/patientes_screen/patientes_profile_screen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/patientes_screen/patientes_screen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/prescription_screen/prescription_screen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/prescriptions_screen/prescriptions_screen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/profile_screen/profile_screen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/review_screen/review_screen.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/sechdualed_surgries_screen/sechdualed_%20surgries.dart';

import 'package:fei_app/view/layout/meun_screen/help_Center_Screen/help_Center_Screen.dart';

import 'package:fei_app/view/layout/meun_screen/meun_screen/meun_screen/meun_screen.dart';
import 'package:fei_app/view/layout/navagation_screen/navagation_screen.dart';
import 'package:fei_app/view/layout/payment_metods_screen/add_card_pqyment.dart';
import 'package:fei_app/view/layout/payment_metods_screen/payment_metods_screen.dart';
import 'package:fei_app/view/layout/preventation_screen/preventation_screen.dart';
import 'package:fei_app/view/layout/preventation_screen/widgets/see_more.dart';
import 'package:fei_app/view/layout/profile_screen/camer_scan_screen.dart';
import 'package:fei_app/view/layout/profile_screen/confirm_screen%20.dart';
import 'package:fei_app/view/layout/profile_screen/change_password.dart';
import 'package:fei_app/view/layout/profile_screen/profile_screen.dart';
import 'package:fei_app/view/layout/profile_screen/edit_profile_screen.dart';
import 'package:fei_app/view/layout/profile_screen/scan_screen.dart';
import 'package:fei_app/view/layout/splash_screen/logo_screen.dart';

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
    ScreenNames.editprofileScreen: (context) => const EditProfileScreen(),
    ScreenNames.changepasswordScreen: (context) => const ChangePassword(),
    ScreenNames.confirmPasswordScreen: (context) => const ConfirmPassword(),
    ScreenNames.pharmacyprofile: (context) => const PharmacyProfile(),
    ScreenNames.logoScreen: (context) => const LogoScreen(),
    ScreenNames.scanscreen: (context) => const ScanScreen(),
    ScreenNames.camerScanScreen: (context) => const CamerScanScreen(),
    ScreenNames.bottomNavigationBar: (context) =>
        const BottomNavigationBarScreen(),
    ScreenNames.doctorsScreen: (context) => const DoctorsScreen(),
    ScreenNames.pharmaciesscreen: (context) => const PharmacyScreen(),
    ScreenNames.vitaminsScreen: (context) => const VitaminScreen(),
    ScreenNames.notificationScreen: (context) => const NotificationScreen(),
    ScreenNames.doctorAppointment: (context) => const DoctorAppointment(),
    ScreenNames.labsAppointment: (context) => const LabsAppointment(),
    ScreenNames.medicineReminder: (context) => const MedicineReminder(),
    ScreenNames.medicinereminderdetiles: (context) =>
        const Medicinereminderdetiles(),
    ScreenNames.messageScreen: (context) => const MessageScreen(),
    ScreenNames.healthTestScreen: (context) => const HealhTestScreen(),
    ScreenNames.healthTestResultScreen: (context) => const TestResultScreen(),
    ScreenNames.doctorProfileScreen: (context) => const DoctorProfileScreen(),
    ScreenNames.labProfileScreen: (context) => const LabProfileScreen(),
    ScreenNames.medicationsScreen: (context) => const MedicationsScreen(),
    ScreenNames.homeHealthScreen: (context) => const HomeHealthScreen(),
    ScreenNames.cardScreen: (context) => const CardScreen(),
    ScreenNames.helpCenterScreen: (context) => const HelpCenterScreen(),
    ScreenNames.preventationScreen: (context) => const PreventationScreen(),
    ScreenNames.seeMore: (context) => const SeeMore(),
    ScreenNames.paymentMethod: (context) => const PaymentMetodsScreen(),
    ScreenNames.addCardPayment: (context) => const AddCardPayment(),
    // doctor screen
    // ScreenNames.doctorBottomNavigationBarScreen: (context) =>
    //     const DoctorBottomNavigationBarScreen(),
    // ScreenNames.hospitalScreen: (context) => const HospitalsScreen(),
    // ScreenNames.scheduleScreen: (context) => const ScheduleScreen(),
    // ScreenNames.labResultScreen: (context) => const LabResultScreen(),
    // ScreenNames.cancelBookScreen: (context) => const CancelBook(),
    ScreenNames.patientScreen: (context) => const PatientesScreen(),
    ScreenNames.bookingScreen: (context) => const bookingScreen(),
    ScreenNames.profileScreendoctor: (context) => const ProfileScreenDoctor(),
    ScreenNames.homeScreendoctor: (context) => const DoctorHomeScreen(),
    ScreenNames.cancelBookScreen: (context) => const CancelScreen(),
    ScreenNames.labResultScreen: (context) => const LabResulutScreen(),
    ScreenNames.reviewScreen: (context) => const ReviewScreen(),
    ScreenNames.prescriptionsScreen: (context) => const PrescriptionsScreen(),
    ScreenNames.prescriptionScreen: (context) => const PrescriptionScreen(),
    ScreenNames.sechdualedSurgries: (context) => const SechdualedSurgries(),
    ScreenNames.hospitalScreen: (context) => const HospitalsScreen(),
    ScreenNames.patientesProfileScreen: (context) =>
        const PatientesProfileScreen(),
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
  static const String editprofileScreen = "editprofileScreen";
  static const String changepasswordScreen = "changepasswordScreen";
  static const String confirmPasswordScreen = "confirmPasswordScreen";
  static const String pharmacyprofile = "pharmacyprofile";
  static const String logoScreen = "logoScreen";
  static const String scanscreen = "scanscreen";
  static const String camerScanScreen = "camerScanScreen";

  static const String pharmaciesscreen = "pharmaciesscreen";
  static const String vitaminsScreen = "vitaminsScreen";
  static const String medicationsScreen = "medicationsScreen";
  static const String notificationScreen = "notificationScreen";
  static const String doctorAppointment = "DoctorAppointment";
  static const String labsAppointment = "labsAppointment";
  static const String medicineReminder = "medicineReminder";
  static const String medicinereminderdetiles = "medicinereminderdetiles";
  static const String appRateScreen = "appRateScreen";
  static const String messageScreen = "messageScreen";
  static const String healthTestScreen = 'healthTestScreen';
  static const String healthTestResultScreen = 'healthTestResultScreen';
  static const String doctorProfileScreen = 'doctorProfileScreen';
  static const String labProfileScreen = 'labProfileScreen';
  static const String homeHealthScreen = 'homeHealthScreen';
  static const String cardScreen = 'cardScreen';
  static const String helpCenterScreen = 'helpCenterScreen';
  static const String preventationScreen = 'preventationScreen';
  static const String seeMore = 'SeeMore';
  static const String paymentMethod = 'paymentMethod';
  static const String addCardPayment = 'addCardPqyment';
  //doctor route
  static const String doctorBottomNavigationBarScreen =
      'doctorBottomNavigationBarScreen';
  static const String hospitalScreen = 'hospitalScreen';
  static const String scheduleScreen = 'scheduleScreen';
  static const String labResultScreen = 'labResultScreen';
  static const String bookingScreen = 'bookingScreen';
  static const String patientScreen = 'patientInfoScreen';
  static const String homeScreendoctor = 'homeScreendoctor';
  static const String profileScreendoctor = 'profileScreendoctor';
  static const String cancelBookScreen = 'cancelBookScreen';
  static const String reviewScreen = 'reviewScreen';
  static const String prescriptionsScreen = 'PrescriptionsScreen';
  static const String prescriptionScreen = 'PrescriptionScreen';
  static const String patientesProfileScreen = 'PatientesProfileScreen';
  static const String sechdualedSurgries = 'SechdualedSurgries';
}
