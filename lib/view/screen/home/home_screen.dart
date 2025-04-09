import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/helpers/resize.dart';

import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/app_string.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/view/component/footer/footer.dart';
import 'package:portfolio/view/component/header/header.dart';
import 'package:portfolio/view/component/text/common_text.dart';
import 'package:portfolio/view/screen/about/about_screen.dart';
import 'package:portfolio/view/screen/project/project_screen.dart';
import 'package:portfolio/view/screen/skills/skillsscreen.dart';
import 'package:portfolio/view/screen/home/widgets/hero_section.dart';
import '../contact/contact_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive.context = context;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              header(),
              20.height,
              heroSection(),
              HeartBeat(
                delay: Duration(milliseconds: 8000),
                duration: Duration(seconds: 3),
                child: CommonText(
                  text: AppString.project,
                  fontSize: Resize.featureTitleTextSize(),
                  bottom: 20,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ).start,
              projects(),
              HeartBeat(
                delay: Duration(milliseconds: 10000),
                duration: Duration(seconds: 3),
                child: CommonText(
                  text: AppString.skills,
                  fontSize: Resize.featureTitleTextSize(),
                  bottom: 20,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ).start,
              Skills(),
              about(),
              ContactScreen(),
              footer()
            ],
          ),
        ),
      ),
    );
  }
}
