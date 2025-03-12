import 'package:flutter/material.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/app_string.dart';
import 'package:portfolio/view/component/footer/footer.dart';
import 'package:portfolio/view/component/header/header.dart';
import 'package:portfolio/view/component/text/common_text.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    20.height,
                    CommonText(
                      text: AppString.aboutMe,
                      fontSize: 64,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ).center,
                    16.height,
                    CommonText(
                      text: AppString.myDetails,
                      maxLines: 100,
                    ),
                    32.height,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(
                          text: "2+",
                          fontSize: 64,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                        16.width,
                        Expanded(
                          child: CommonText(
                            text: AppString.yearsOfExperience,
                            maxLines: 100,
                            fontSize: 32,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              30.height,
              footer()
            ],
          ),
        ),
      ),
    );
  }
}
