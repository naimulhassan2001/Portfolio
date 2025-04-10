import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/helpers/other_helper.dart';
import 'package:portfolio/utils/app_string.dart';
import 'package:portfolio/view/component/button/common_button.dart';
import 'package:portfolio/view/component/text/common_text.dart';
import 'package:portfolio/view/component/text_field/common_text_field.dart';


Widget contactForm() {
  var formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController() ;
  TextEditingController emailController = TextEditingController() ;
  TextEditingController numberController = TextEditingController() ;
  TextEditingController messageController = TextEditingController() ;

  return  ConstrainedBox(
    constraints: BoxConstraints(
      maxWidth: 400,
      minWidth: 200,
    ),
    child: Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeIn(
            duration: Duration(seconds: 3),
            delay: Duration(milliseconds: 6000),
            child: CommonText(
              text: AppString.name,
              bottom: 8,
            ),
          ),
          FadeIn(
            duration: Duration(seconds: 3),
            delay: Duration(milliseconds: 6200),
            child: CommonTextField(
              hintText: AppString.nameHint,
              keyboardType: TextInputType.name,
              validator: OtherHelper.validator,
              controller: nameController,
            ),
          ),
          FadeIn(
              duration: Duration(seconds: 3),
              delay: Duration(milliseconds: 6400),
              child: CommonText(text: AppString.email, bottom: 8, top: 12)),
          FadeIn(
            duration: Duration(seconds: 3),
            delay: Duration(milliseconds: 6600),
            child: CommonTextField(
              hintText: AppString.emailHint,
              keyboardType: TextInputType.emailAddress,
              validator: OtherHelper.validator,
              controller: emailController,
            ),
          ),
          FadeIn(
              duration: Duration(seconds: 3),
              delay: Duration(milliseconds: 6800),
              child: CommonText(
                  text: AppString.phoneNumber, bottom: 8, top: 12)),
          FadeIn(
            duration: Duration(seconds: 3),
            delay: Duration(milliseconds: 7000),
            child: CommonTextField(
              hintText: AppString.phoneNumberHint,
              keyboardType: TextInputType.phone,
              validator: OtherHelper.validator,
              controller: numberController,
            ),
          ),
          FadeIn(
              duration: Duration(seconds: 3),
              delay: Duration(milliseconds: 7200),
              child: CommonText(text: AppString.message, bottom: 8, top: 12)),
          FadeIn(
            duration: Duration(seconds: 3),
            delay: Duration(milliseconds: 7400),
            child: CommonTextField(
              hintText: AppString.messageHint,
              maxLines: 4,
              validator: OtherHelper.validator,
              controller: messageController,
            ),
          ),
          24.height,
          ElasticIn(
            duration: Duration(seconds: 3),
            delay: Duration(milliseconds: 7600),
            child: CommonButton(
              titleText: AppString.sendMessage,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  nameController.clear();
                  emailController.clear();
                  numberController.clear();
                  messageController.clear();
                }
              },
            ),
          ).center,
        ],
      ),
    ),
  ) ;
}
