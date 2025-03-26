import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/app_string.dart';
import 'package:portfolio/view/component/text/common_text.dart';

Widget footer() => Container(
    padding: EdgeInsets.all(20),
    child: Column(
      children: [
        Container(
          height: 4,
          width: double.infinity,
          color: AppColors.white,
          margin: EdgeInsets.symmetric(vertical: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(
              text: AppString.copyRight,
              fontSize: 12,
              color: AppColors.blue,
            ),
            CommonText(
              text: AppString.designAndDevelopment,
              fontSize: 16,
              color: AppColors.blue,
            ),
          ],
        ),
      ],
    ),
  );
