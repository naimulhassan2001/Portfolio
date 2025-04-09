import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/core/route/app_routes.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/utils/app_string.dart';
import 'package:portfolio/utils/responsive.dart';

import 'package:portfolio/view/component/header/header_item.dart';

Widget header() => Column(
      children: [
        16.height,
        Row(
          children: [
            headerItem(title: AppString.myPortfolio),
            Spacer(),
            if (!Responsive.isMobile())
              Row(
                children: [
                  ElasticIn(
                    duration: Duration(seconds: 1),
                    delay: Duration(milliseconds: 300),
                    child: headerItem(
                      title: AppString.home,
                      onTap: () => Get.toNamed(AppRoutes.home),
                    ),
                  ),
                  ElasticIn(
                    duration: Duration(seconds: 1),
                    delay: Duration(milliseconds: 600),
                    child: headerItem(
                      title: AppString.project,
                      onTap: () => Get.toNamed(AppRoutes.home),
                    ),
                  ),
                  ElasticIn(
                    duration: Duration(seconds: 1),
                    delay: Duration(milliseconds: 900),
                    child: headerItem(
                      title: AppString.skills,
                      onTap: () => Get.toNamed(AppRoutes.home),
                    ),
                  ),
                  ElasticIn(
                    duration: Duration(seconds: 1),
                    delay: Duration(milliseconds: 1200),
                    child: headerItem(
                      title: AppString.about,
                      onTap: () => Get.toNamed(AppRoutes.home),
                    ),
                  ),
                  ElasticIn(
                    duration: Duration(seconds: 1),
                    delay: Duration(milliseconds: 1500),
                    child: headerItem(
                      title: AppString.contact,
                      onTap: () => Get.toNamed(AppRoutes.home),
                    ),
                  ),
                ],
              ),
          ],
        ),
        if (!Responsive.isMobile())
          FadeIn(
            duration: Duration(seconds: 3),
            delay: Duration(milliseconds: 400),
            child: Container(
              height: 20,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF00C9FF).withOpacity(0.5),
                    Color(0xFF00C9FF),
                    Color(0xFF00C9FF).withOpacity(0.8),
                    Color(0xFF00C9FF),
                    Color(0xFF00C9FF).withOpacity(0.8),
                    Color(0xFF00C9FF),
                    Color(0xFF00C9FF).withOpacity(0.8),
                    Color(0xFF00C9FF),
                    Color(0xFF00C9FF).withOpacity(0.8),
                    Color(0xFF00C9FF),
                    Color(0xFF00C9FF).withOpacity(0.8),
                    Color(0xFF00C9FF),
                    Color(0xFF00C9FF).withOpacity(0.8),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
          )
      ],
    );
