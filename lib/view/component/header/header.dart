import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:portfolio/core/route/app_routes.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/app_string.dart';

import 'header_item.dart';

Widget header() {
  return Container(
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.symmetric(horizontal: 30),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: AppColors.white, width: 20)),
    ),
    child: Row(
      children: [
        headerItem(title: AppString.myPortfolio),
        Spacer(),
        headerItem(
          title: AppString.home,
          onTap: () => Get.toNamed(AppRoutes.home),
        ),
        headerItem(title: AppString.project),
        headerItem(title: AppString.skills),
        headerItem(title: AppString.about),
        headerItem(
          title: AppString.contact,
          onTap: () => Get.toNamed(AppRoutes.contact),
        ),
      ],
    ),
  );
}
