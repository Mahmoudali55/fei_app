import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:fei_app/view/layout/chats_screen/chats_screen/message_screen.dart/widgets/chat_sample.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(children: [
              const BackButtonCustom(),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue[100],
                  ),
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      AppImages.doctors,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Text(
                AppWords.doctorsname.tr,
                style: AppTextStyle.textStyle20medium,
              ),
            ]),
            Expanded(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return const ChatSample();
                  }),
            ),
            CustomTextField(
                onTap: () {},
                currentFocusNode: FocusNode(),
                nextFocusNode: FocusNode(),
                hintText: 'Type a Message',
                prefixIcon: AppImages.faceIcon,
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Transform.scale(
                        scale: .7, child: Image.asset(AppImages.sendIcon)),
                    const SizedBox(width: 8),
                    Transform.scale(
                        scale: .7,
                        child: Image.asset(AppImages.microphoneIcon)),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
