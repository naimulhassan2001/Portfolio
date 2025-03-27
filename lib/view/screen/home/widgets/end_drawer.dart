import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/utils/app_colors.dart';

import '../../../../core/route/app_routes.dart';
import '../../../../utils/app_string.dart';
import '../../../component/header/header_item.dart';

Drawer endDrawer() {
  return Drawer(
    backgroundColor: AppColors.background,
    width: 250,
    child: ListView(
      children: [
        50.height,
        headerItem(
          vertical: 6,
          title: AppString.home,
          onTap: () => Get.toNamed(AppRoutes.home),
        ),
        headerItem(
          vertical: 6,
          title: AppString.project,
          onTap: () => Get.toNamed(AppRoutes.home),
        ),
        headerItem(
          vertical: 6,
          title: AppString.skills,
          onTap: () => Get.toNamed(AppRoutes.home),
        ),
        headerItem(
          vertical: 6,
          title: AppString.about,
          onTap: () => Get.toNamed(AppRoutes.home),
        ),
        headerItem(
          vertical: 6,
          title: AppString.contact,
          onTap: () => Get.toNamed(AppRoutes.home),
        ),
      ],
    ),
  );
}
