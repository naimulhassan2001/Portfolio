import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/app_colors.dart';

class CommonButton extends StatelessWidget {

  const CommonButton({
    this.onTap,
    required this.titleText,
    this.titleColor = AppColors.white,
    this.buttonColor = AppColors.blue,
    this.titleSize = 16,
    this.buttonRadius = 10,
    this.titleWeight = FontWeight.w700,
    this.borderWidth = 1,
    this.isLoading = false,
    this.borderColor = AppColors.blue,
    super.key,
  });
  final VoidCallback? onTap;
  final String titleText;
  final Color titleColor;
  final Color buttonColor;
  final Color? borderColor;
  final double borderWidth;
  final double titleSize;
  final FontWeight titleWeight;
  final double buttonRadius;

  final bool isLoading;

  @override
  Widget build(BuildContext context) => ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(buttonColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonRadius),
            side: BorderSide(
              color: borderColor ?? AppColors.primaryColor,
              width: borderWidth,
            ),
          ),
        ),
        elevation: WidgetStateProperty.all(0),
      ),
      child:
          isLoading
              ? CircularProgressIndicator.adaptive()
              : Text(
                titleText,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: titleColor,
                  fontSize: titleSize,
                  fontWeight: titleWeight,
                ),
              ),
    );
}
