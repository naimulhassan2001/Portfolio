import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/app_images.dart';
import 'package:portfolio/utils/app_string.dart';
import 'package:portfolio/view/component/image/common_image.dart';
import 'package:portfolio/view/component/text/common_text.dart';

Widget footer() {
  return Container(
    padding: EdgeInsets.all(20),
    child: Column(
      children: [
        Row(
          children: [
            40.width,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  child: CommonImage(
                    imageSrc: AppImages.naimul,
                    imageType: ImageType.png,
                    size: 60,
                  ),
                ),

                CommonText(
                  text: AppString.beautifulDesignHas,
                  maxLines: 2,
                  top: 30,
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                CommonText(text: AppString.home, fontSize: 20, bottom: 8),
                CommonText(text: AppString.project, fontSize: 20, bottom: 8),
                CommonText(text: AppString.skills, fontSize: 20, bottom: 8),
                CommonText(text: AppString.contact, fontSize: 20, bottom: 8),
              ],
            ),
            150.width,
            Column(
              children: [
                CommonText(
                  text: AppString.termAndService,
                  fontSize: 20,
                  bottom: 8,
                ),
                CommonText(
                  text: AppString.privacyPolicy,
                  fontSize: 20,
                  bottom: 8,
                ),
                CommonText(text: AppString.licenses, fontSize: 20, bottom: 8),
                CommonText(text: AppString.about, fontSize: 20, bottom: 8),
              ],
            ),
            150.width,
            Column(
              children: [
                CommonText(
                  text: AppString.termAndService,
                  fontSize: 20,
                  bottom: 8,
                ),
                CommonText(
                  text: AppString.privacyPolicy,
                  fontSize: 20,
                  bottom: 8,
                ),
                CommonText(text: AppString.licenses, fontSize: 20, bottom: 8),
                CommonText(text: AppString.about, fontSize: 20, bottom: 8),
              ],
            ),

            150.width,
          ],
        ),

        Container(
          height: 4,
          width: double.infinity,
          color: AppColors.white,
          margin: EdgeInsets.symmetric(vertical: 20),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(text: AppString.copyRight),
            CommonText(text: AppString.designAndDevelopment),
          ],
        ),
      ],
    ),
  );
}
