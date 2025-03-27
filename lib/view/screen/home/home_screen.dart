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
import 'package:portfolio/view/screen/contact/widgets/contact_form.dart';
import 'package:portfolio/view/screen/project/project_screen.dart';
import 'package:portfolio/view/screen/skills/skillsscreen.dart';
import 'package:portfolio/view/screen/home/widgets/hero_section.dart';

import 'widgets/end_drawer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Responsive.context = context;
    return Scaffold(
      key: scaffoldKey,
      endDrawer: endDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              header(scaffoldKey),
              20.height,
              heroSection(),
              CommonText(
                text: AppString.project,
                fontSize: Resize.featureTitleTextSize(),
                bottom: 20,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ).start,
              projects(),
              CommonText(
                text: AppString.skills,
                fontSize: Resize.featureTitleTextSize(),
                bottom: 20,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ).start,
              Skills(),
              about(),
              contactForm(),
              footer()
            ],
          ),
        ),
      ),
    );
  }
}
