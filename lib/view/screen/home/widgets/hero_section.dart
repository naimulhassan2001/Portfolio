import 'package:animate_do/animate_do.dart';
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
              ElasticIn(
                delay: Duration(milliseconds: 3000),
                duration: Duration(seconds: 10),
                child: CommonText(
                  text: '${AppString.greeting} ${AppString.myName}',
                  fontSize: Resize.homeMyNameTextSize(),
                  fontWeight: FontWeight.bold,
                ),
              ),
              FadeInUp(
                delay: Duration(milliseconds: 3500),
                duration: Duration(seconds: 3),
                child: CommonText(
                  text: AppString.aboutMeDetails,
                  fontSize: Resize.homeMyNameAboutSize(),
                  maxLines: 30,
                  fontWeight: FontWeight.w100,
                ),
              ),
              20.height,
              // SocialIcons(),
              // 40.height,
              FadeIn(
                delay: Duration(milliseconds: 5000),
                duration: Duration(seconds: 5),
                child: Wrap(
                  spacing: Resize.aboutAndContactButtonSpace(),
                  runSpacing: 16.0,
                  children: [
                    HeartBeat(
                      delay: Duration(milliseconds: 6500),
                      duration: Duration(seconds: 3),
                      child: CommonButton(
                        titleText: AppString.contactMe,
                        buttonRadius: 30,
                      ),
                    ),
                    HeartBeat(
                      delay: Duration(milliseconds: 7500),
                      duration: Duration(seconds: 3),
                      child: CommonButton(
                        titleText: AppString.aboutMe,
                        borderColor: AppColors.white,
                        buttonColor: AppColors.transparent,
                        buttonRadius: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (!Responsive.isMobile()) myPicture()
      ],
    );

myPicture() {
  return ElasticIn(
    duration: Duration(milliseconds: 2000),
    delay: Duration(milliseconds: 1000),
    child: Container(
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
    ),
  );
}
