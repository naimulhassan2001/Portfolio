import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/app_colors.dart';

class CommonText extends StatelessWidget {
  const CommonText({
    super.key,
    this.maxLines = 1,
    this.textAlign = TextAlign.start,
    this.left = 0,
    this.right = 0,
    this.top = 0,
    this.bottom = 0,
    this.fontSize = 20,
    this.fontWeight = FontWeight.w400,
    this.color = AppColors.white,
    required this.text,
    this.style = false,
    this.overflow = TextOverflow.ellipsis,
  });

  final double left;
  final double right;
  final double top;
  final double bottom;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  final TextAlign textAlign;
  final int maxLines;
  final TextOverflow overflow;
  final bool style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
        right: right,
        top: top,
        bottom: bottom,
      ),
      child: Text(
        textAlign: textAlign,
        text,
        maxLines: maxLines,
        overflow: overflow,
        style:
            style == true
                ? GoogleFonts.poppins(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color: color,
                )
                : GoogleFonts.ebGaramond(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color: color,
                ),
      ),
    );
  }
}
