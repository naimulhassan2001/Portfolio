import 'package:flutter/cupertino.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/app_string.dart';
import 'package:portfolio/view/component/button/common_button.dart';
import 'package:portfolio/view/component/text/common_text.dart';
import 'package:portfolio/view/component/text_field/common_text_field.dart';

Widget contactForm() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CommonText(
        text: AppString.contact,
        fontSize: 64,
        color: AppColors.primaryColor,
        bottom: 20,
        fontWeight: FontWeight.bold,
      ).start,
      CommonText(
        text: AppString.name,
        bottom: 12,
      ),
      CommonTextField(
        hintText: AppString.nameHint,
        keyboardType: TextInputType.name,
      ),
      CommonText(text: AppString.email, bottom: 12, top: 20),
      CommonTextField(
        hintText: AppString.emailHint,
        keyboardType: TextInputType.emailAddress,
      ),
      CommonText(text: AppString.phoneNumber, bottom: 12, top: 20),
      CommonTextField(
        hintText: AppString.phoneNumberHint,
        keyboardType: TextInputType.phone,
      ),
      CommonText(text: AppString.message, bottom: 12, top: 20),
      CommonTextField(
        hintText: AppString.messageHint,
        maxLines: 5,
      ),
      24.height,
      CommonButton(
        titleText: AppString.sendMessage,
        onTap: () {},
      ).center,
    ],
  );
