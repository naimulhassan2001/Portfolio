import 'package:flutter/cupertino.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/app_images.dart';
import 'package:portfolio/utils/app_string.dart';
import 'package:portfolio/view/component/button/common_button.dart';
import 'package:portfolio/view/component/image/common_image.dart';
import 'package:portfolio/view/component/text/common_text.dart';

import 'social_media_icons.dart';

Widget heroSection() {
  return Container(
    padding: EdgeInsets.all(100),
    child: Row(
      children: [
        Expanded(
          child: Column(
            children: [
              CommonText(
                text: AppString.myName,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              CommonText(
                text: AppString.aboutMeDetails,
                fontSize: 34,
                maxLines: 30,
              ),
              20.height,
              SocialIcons(),
              40.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonButton(
                    titleText: AppString.contactMe,
                    buttonRadius: 30,
                  ),
                  40.width,
                  CommonButton(
                    titleText: AppString.aboutMe,
                    borderColor: AppColors.white,
                    buttonColor: AppColors.transparent,
                    titleColor: AppColors.white,
                    buttonRadius: 30,
                  ),
                ],
              ),
            ],
          ),
        ),

        Container(
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.9),
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.white, width: 3),
          ),
          child: CommonImage(
            imageSrc: AppImages.naimul,
            size: 512,
            imageType: ImageType.png,
            borderRadius: 50000,
          ),
        ),
      ],
    ),
  );
}
