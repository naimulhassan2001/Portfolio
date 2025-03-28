import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/helpers/resize.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/app_images.dart';
import 'package:portfolio/utils/app_string.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/view/component/button/common_button.dart';
import 'package:portfolio/view/component/image/common_image.dart';
import 'package:portfolio/view/component/text/common_text.dart';

Widget heroSection() => Row(
      children: [
        Expanded(
          child: Column(
            children: [
              if (Responsive.isMobile()) myPicture(),
              if (Responsive.isMobile()) 20.height,
              CommonText(
                text: '${AppString.greeting} ${AppString.myName}',
                fontSize: Resize.homeMyNameTextSize(),
                fontWeight: FontWeight.bold,
              ),
              CommonText(
                text: AppString.aboutMeDetails,
                fontSize: Resize.homeMyNameAboutSize(),
                maxLines: 30,
                fontWeight: FontWeight.w100,
              ),
              20.height,
              // SocialIcons(),
              // 40.height,
              Wrap(
                spacing: Resize.aboutAndContactButtonSpace(),
                runSpacing: 16.0,
                children: [
                  CommonButton(
                    titleText: AppString.contactMe,
                    buttonRadius: 30,
                  ),
                  CommonButton(
                    titleText: AppString.aboutMe,
                    borderColor: AppColors.white,
                    buttonColor: AppColors.transparent,
                    buttonRadius: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
        if (!Responsive.isMobile()) myPicture()
      ],
    );

myPicture() {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.white.withOpacity(0.9),
      shape: BoxShape.circle,
      border: Border.all(color: AppColors.white, width: 3),
    ),
    child: CommonImage(
      imageSrc: AppImages.naimul,
      size: Resize.homeImageSize(),
      imageType: ImageType.png,
      borderRadius: 50000,
    ),
  );
}
