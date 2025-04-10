import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
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
                    delay: Duration(milliseconds: 200),
                    child: headerItem(
                      title: AppString.home,
                    ),
                  ),
                  ElasticIn(
                    duration: Duration(seconds: 1),
                    delay: Duration(milliseconds: 400),
                    child: headerItem(
                      title: AppString.project,

                    ),
                  ),
                  ElasticIn(
                    duration: Duration(seconds: 1),
                    delay: Duration(milliseconds: 600),
                    child: headerItem(
                      title: AppString.skills,
                    ),
                  ),
                  ElasticIn(
                    duration: Duration(seconds: 1),
                    delay: Duration(milliseconds: 800),
                    child: headerItem(
                      title: AppString.about,
                    ),
                  ),
                  ElasticIn(
                    duration: Duration(seconds: 1),
                    delay: Duration(milliseconds: 1000),
                    child: headerItem(
                      title: AppString.contact,
                    ),
                  ),
                ],
              ),
          ],
        ),
        if (!Responsive.isMobile())
          FadeIn(
            duration: Duration(seconds: 3),
            delay: Duration(milliseconds: 200),
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
