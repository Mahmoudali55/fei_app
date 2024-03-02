import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomMenuButton extends StatelessWidget {
  const CustomMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: 380,
      height: 52,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xffD9D9D9)),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)))),
        onPressed: () {
          showCupertinoDialog(
              context: context,
              builder: (context) {
                return const LogoutAlert();
              });
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            Icons.logout,
            color: Colors.grey[800],
          ),
          Text(AppWords.logOut.tr, style: AppTextStyle.textStyle18medium)
        ]),
      ),
    );
  }
}

class LogoutAlert extends StatelessWidget {
  const LogoutAlert({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(
        'Log Out of your acount?',
        style: AppTextStyle.textStyle18medium,
      ),
      actions: [
        CupertinoDialogAction(
            onPressed: () {
              goBack();
            },
            child: Text('Cancel',
                style: AppTextStyle.textStyle17regular
                    .copyWith(color: Colors.blue))),
        CupertinoDialogAction(
          onPressed: () {
            goToScreen(screenNames: ScreenNames.loginScreen);
          },
          child: Text(
            AppWords.logOut.tr,
            style: AppTextStyle.textStyle17semiBold.copyWith(color: Colors.red),
          ),
        ),
      ],
    );
  }
}
