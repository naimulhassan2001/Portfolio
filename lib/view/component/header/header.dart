import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:portfolio/core/route/app_routes.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/app_string.dart';

import 'package:portfolio/view/component/header/header_item.dart';

Widget header() => Column(
    children: [
      16.height,
      Row(
        children: [
          headerItem(title: AppString.myPortfolio),
          Spacer(),
          headerItem(
            title: AppString.home,
            onTap: () => Get.toNamed(AppRoutes.home),
          ),
          headerItem(
            title: AppString.project,
            onTap: () => Get.toNamed(AppRoutes.home),
          ),
          headerItem(
            title: AppString.skills,
            onTap: () => Get.toNamed(AppRoutes.home),
          ),
          headerItem(
            title: AppString.about,
            onTap: () => Get.toNamed(AppRoutes.home),
          ),
          headerItem(
            title: AppString.contact,
            onTap: () => Get.toNamed(AppRoutes.home),
          ),
        ],
      ),
      Container(
        height: 20,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
      )
    ],
  );
