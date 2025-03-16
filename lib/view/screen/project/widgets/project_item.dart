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
            style: true,
            fontSize: 16,
            text:
                "Russend is a money transfer app designed to facilitate easy and secure financial transactions from Russia to Central African countries."),
        20.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  CommonImage(
                      imageType: ImageType.png,
                    
                      imageSrc: AppImages.img),
                  20.height,
                  Row(
                    spacing: 12,
                    children: [
                      CommonImage(
                          imageType: ImageType.png,
                          width: 100,
                          imageSrc: AppImages.img),
                      CommonImage(
                          imageType: ImageType.png,
                          width: 100,
                          imageSrc: AppImages.img),
                      CommonImage(
                          imageType: ImageType.png,
                          width: 100,
                          imageSrc: AppImages.img),
                      CommonImage(
                          imageType: ImageType.png,
                          width: 100,
                          imageSrc: AppImages.img),
                    ],
                  ),
                ],
              ),
            ),
            20.width,
            Expanded(
              flex: 3,
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        margin: EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: CommonText(
                          text: "Socket.IO",
                          style: true,
                          fontSize: 16,
                          color: AppColors.textColor,
                        ),
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
                      fontSize: 15,
                      style: true,
                      color: AppColors.textColor,
                      text:
                          "• Integrated to support mobile money transfers via services like Orange Money, and MTN"),
                  10.height,
                  CommonText(
                      maxLines: 3,
                      fontSize: 15,
                      style: true,
                      color: AppColors.textColor,
                      text:
                          "• Integrated to support mobile money transfers via services like Orange Money, and MTN"),
                  10.height,
                  CommonText(
                      maxLines: 3,
                      fontSize: 15,
                      style: true,
                      color: AppColors.textColor,
                      text:
                          "• Integrated to support mobile money transfers via services like Orange Money, and MTN"),
                  10.height,
                  CommonText(
                      maxLines: 3,
                      fontSize: 15,
                      style: true,
                      color: AppColors.textColor,
                      text:
                          "• Integrated to support mobile money transfers via services like Orange Money, and MTN"),
                  10.height,
                  CommonText(
                    text: "Deployment",
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  20.height,
                  CommonText(
                      maxLines: 3,
                      fontSize: 15,
                      style: true,
                      color: AppColors.textColor,
                      text:
                          "• Hosted on DigitalOcean, providing scalable cloud infrastructure."),
                  10.height,
                  CommonText(
                      maxLines: 3,
                      fontSize: 15,
                      style: true,
                      color: AppColors.textColor,
                      text:
                          "• Hosted on DigitalOcean, providing scalable cloud infrastructure."),
                  20.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Color(0xffF3F4F6).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonText(text: "Year"),
                              CommonText(text: "2024"),
                            ],
                          ),
                        ),
                      ),
                      16.width,
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Color(0xffF3F4F6).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonText(text: "Role"),
                              CommonText(
                                  maxLines: 3,
                                  text:
                                      "Backend Development\nAPI Integration\nPayment Gateway Integration"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
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
                          fontSize: 18,
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
