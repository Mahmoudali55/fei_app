import 'package:fei_app/helper/model/custom_chat_model.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/layout/chats_screen/chats_screen/widgets/custom_chat.dart';
import 'package:fei_app/view/layout/chats_screen/chats_screen/widgets/custom_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  final CustomChatModel? customChatModel;
  const ChatScreen({super.key, this.customChatModel});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<CustomChatModel> list = [
    CustomChatModel(
        image: AppImages.doctors.tr,
        title: AppWords.doctorsname.tr,
        subtitle: AppWords.doctorMessage.tr,
        time: '10:30 PM'),
    CustomChatModel(
        image: AppImages.doctors.tr,
        title: AppWords.doctorsname.tr,
        subtitle: AppWords.doctorMessage.tr,
        time: '10:30 PM'),
    CustomChatModel(
        image: AppImages.doctors.tr,
        title: AppWords.doctorsname.tr,
        subtitle: AppWords.doctorMessage.tr,
        time: '10:30 PM'),
    CustomChatModel(
        image: AppImages.doctors.tr,
        title: AppWords.doctorsname.tr,
        subtitle: AppWords.doctorMessage.tr,
        time: '10:30 PM'),
    CustomChatModel(
        image: AppImages.doctors.tr,
        title: AppWords.doctorsname.tr,
        subtitle: AppWords.doctorMessage.tr,
        time: '10:30 PM'),
    CustomChatModel(
        image: AppImages.doctors.tr,
        title: AppWords.doctorsname.tr,
        subtitle: AppWords.doctorMessage.tr,
        time: '10:30 PM'),
    CustomChatModel(
        image: AppImages.doctors.tr,
        title: AppWords.doctorsname.tr,
        subtitle: AppWords.doctorMessage.tr,
        time: '10:30 PM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonCustom(),
        title: Text(
          AppWords.chat.tr,
          style: AppTextStyle.textStyle22medium,
        ),
        actions: [
          GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Stack(
                  children: [
                    Image.asset(
                      AppImages.message,
                      color: AppColors.textColor,
                    ),
                    Positioned(
                      bottom: 2,
                      left: 15,
                      child: Text(
                        "3",
                        style: AppTextStyle.textStyle20bold
                            .copyWith(color: Colors.red),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 2)
                      ]),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey[500],
                      ),
                      SizedBox(
                        width: 250.w,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'Search', border: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomState(),
              Wrap(
                children: [
                  ...List.generate(
                      list.length,
                      (index) => CustomChat(
                            customChatModel: list[index],
                          ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
