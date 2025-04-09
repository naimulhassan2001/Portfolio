import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/app_string.dart';
import 'package:portfolio/view/component/text/common_text.dart';

import '../../../helpers/resize.dart';

Widget about() => Column(
      children: [
        20.height,
        HeartBeat(
          delay: Duration(milliseconds: 13000),
          duration: Duration(seconds: 3),
          child: CommonText(
            text: AppString.aboutMe,
            fontSize: Resize.featureTitleTextSize(),
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ).start,
        16.height,
        FadeIn(
          delay: Duration(milliseconds: 14000),
          duration: Duration(seconds: 3),
          child: CommonText(
            text: AppString.myDetails,
            maxLines: 100,
          ),
        ),
        32.height,
        FadeIn(
          delay: Duration(milliseconds: 14500),
          duration: Duration(seconds: 3),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CommonText(
                text: '2+',
                fontSize: Resize.featureTitleTextSize(),
                fontWeight: FontWeight.bold,
                color: AppColors.blue,
              ),
              16.width,
              Expanded(
                child: CommonText(
                  text: AppString.yearsOfExperience,
                  maxLines: 100,
                  fontSize: Resize.homeMyNameAboutSize(),
                ).start,
              ),
            ],
          ),
        ),
      ],
    );
