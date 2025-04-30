import 'package:animate_do/animate_do.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/helpers/other_helper.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/app_string.dart';
import 'package:portfolio/utils/responsive.dart';

Widget footer() => Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          FadeIn(
            delay: Duration(milliseconds: 8000),
            duration: Duration(seconds: 3),
            child: Container(
              height: 4,
              width: double.infinity,
              color: AppColors.white,
              margin: EdgeInsets.symmetric(vertical: 20),
            ),
          ),
          Align(
              alignment: Responsive.isMobile()
                  ? Alignment.center
                  : Alignment.centerRight,
              child: designAndDevelopment())
        ],
      ),
    );

Widget designAndDevelopment() {
  return ElasticIn(
    duration: Duration(seconds: 3),
    delay: Duration(milliseconds: 8200),
    child: Text.rich(TextSpan(children: [
      TextSpan(
        text: AppString.designAndDevelopment,
        style: GoogleFonts.ebGaramond(
          color: AppColors.blue,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      TextSpan(
        text: AppString.knownName,
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            OtherHelper.openUrl('https://wa.me/8801865965581');
          },
        style: GoogleFonts.ebGaramond(
          color: AppColors.blue,
          fontSize: 14,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.primaryColor,
          fontWeight: FontWeight.w400,
        ),
      ),
    ])),
  );
}
