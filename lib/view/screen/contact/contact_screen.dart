import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/utils/responsive.dart';

import '../../../helpers/resize.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_string.dart';
import '../../component/text/common_text.dart';
import 'widgets/contact_form.dart';
import 'widgets/social_scetion.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeartBeat(
          delay: Duration(milliseconds: 15000),
          duration: Duration(seconds: 3),
          child: CommonText(
            text: AppString.contact,
            fontSize: Resize.featureTitleTextSize(),
            color: AppColors.primaryColor,
            bottom: 20,
            fontWeight: FontWeight.bold,
          ),
        ).start,
        if (Responsive.isSize() < 700) socialScetion(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isSize() > 700)
              Expanded(
                child: socialScetion(),
              ),
            Expanded(child: Center(child: contactForm())),
          ],
        ),
      ],
    );
  }
}
