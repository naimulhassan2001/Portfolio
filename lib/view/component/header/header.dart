import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/core/route/app_routes.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/app_string.dart';
import 'package:portfolio/utils/responsive.dart';

import 'package:portfolio/view/component/header/header_item.dart';

Widget header(GlobalKey<ScaffoldState> scaffoldKey) => Column(
      children: [
        16.height,
        Row(
          children: [
            headerItem(title: AppString.myPortfolio),
            Spacer(),
            if (Responsive.isMobile())
              IconButton(
                onPressed: () {

                  if (!scaffoldKey.currentState!.isEndDrawerOpen) {
                    scaffoldKey.currentState!.openEndDrawer();
                    return;
                  }
                  scaffoldKey.currentState?.closeEndDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: AppColors.white,
                ),
              ),
            if (!Responsive.isMobile())
              Row(
                children: [
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
          ],
        ),
        if (!Responsive.isMobile())
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
