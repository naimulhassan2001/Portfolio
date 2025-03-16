import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/app_images.dart';
import 'package:portfolio/view/component/image/common_image.dart';
import 'package:portfolio/view/component/text/common_text.dart';

Widget projectItem() {
  return Container(
    padding: EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: "Russend",
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        CommonText(
            maxLines: 10,
            text:
                "Russend is a money transfer app designed to facilitate easy and secure financial transactions from Russia to Central African countries."),
        Row(
          children: [
            Column(
              children: [
                CommonImage(
                    imageType: ImageType.network,
                    size: 500,
                    imageSrc: AppImages.img),
                Row(
                  children: [
                    CommonImage(
                        imageType: ImageType.png,
                        size: 100,
                        imageSrc: AppImages.img),
                    CommonImage(
                        imageType: ImageType.network,
                        size: 100,
                        imageSrc: AppImages.img),
                    CommonImage(
                        imageType: ImageType.network,
                        size: 100,
                        imageSrc: AppImages.img),
                    CommonImage(
                        imageType: ImageType.network,
                        size: 100,
                        imageSrc: AppImages.img),
                  ],
                ),
              ],
            ),
            20.width,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: "Tech Stack",
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  10.height,
                  Row(
                    children: List.generate(
                      4,
                      (index) => Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        margin: EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: CommonText(text: "Socket.IO"),
                      ),
                    ),
                  ),
                  10.height,
                  CommonText(
                    text: "Key Features",
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  10.height,
                  CommonText(
                      maxLines: 3,
                      text:
                          "Paydunya API: Integrated to support mobile money transfers via services like Orange Money, and MTN"),
                  CommonText(
                      maxLines: 3,
                      text:
                          "Paydunya API: Integrated to support mobile money transfers via services like Orange Money, and MTN"),
                  CommonText(
                      maxLines: 3,
                      text:
                          "Paydunya API: Integrated to support mobile money transfers via services like Orange Money, and MTN"),
                  CommonText(
                      maxLines: 3,
                      text:
                          "Paydunya API: Integrated to support mobile money transfers via services like Orange Money, and MTN"),
                  CommonText(
                      maxLines: 3,
                      text:
                          "Paydunya API: Integrated to support mobile money transfers via services like Orange Money, and MTN"),
                  CommonText(
                    text: "Deployment",
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  CommonText(
                      maxLines: 3,
                      text:
                          "Hosted on DigitalOcean, providing scalable cloud infrastructure."),
                  CommonText(
                      maxLines: 3,
                      text:
                          "Hosted on DigitalOcean, providing scalable cloud infrastructure."),
                  CommonText(
                      maxLines: 3,
                      text:
                          "Hosted on DigitalOcean, providing scalable cloud infrastructure."),
                  CommonText(
                      maxLines: 3,
                      text:
                          "Hosted on DigitalOcean, providing scalable cloud infrastructure."),
                  Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            CommonText(text: "Year"),
                            CommonText(text: "2024"),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            CommonText(text: "Role"),
                            CommonText(
                                text:
                                    "Backend Development, API Integration, Payment Gateway Integration"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.open_in_new,
                          size: 20,
                        ),
                        6.width,
                        CommonText(
                          text: "Live Demo",
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}
