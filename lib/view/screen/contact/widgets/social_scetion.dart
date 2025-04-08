

import 'package:flutter/cupertino.dart';
import 'package:portfolio/helpers/my_extension.dart';

import '../../../../helpers/resize.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';
import '../../../component/text/common_text.dart';
import '../../home/widgets/social_media_icons.dart';

Widget socialScetion() {
  return  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      CommonText(
        text: AppString.contactWithMe,
        fontSize: Resize.contactWithMe(),
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
      ).start,
      CommonText(
        text: AppString.contactDetails,
        fontSize: Resize.homeMyNameAboutSize(),
        color: AppColors.white,
        bottom: 16,
        maxLines: 100,
        fontWeight: FontWeight.w400,
      ).start,
      SocialIcons(),
    ],
  ) ;
}