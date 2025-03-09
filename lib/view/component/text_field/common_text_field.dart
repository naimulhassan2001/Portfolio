import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/app_colors.dart';
import '../text/common_text.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.controller,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.mexLength,
    this.maxLines,
    this.validator,
    this.prefixText,
    this.paddingHorizontal = 16,
    this.paddingVertical = 14,
    this.borderRadius = 8,
    this.inputFormatters,
    this.fillColor = AppColors.white,
    this.hintTextColor = Colors.grey,
    this.labelTextColor = Colors.grey,
    this.textColor = AppColors.black,
    this.borderColor = AppColors.transparent,
    this.onSubmitted,
    this.onTap,
    this.suffixIcon,
  });

  final String? hintText;
  final String? labelText;
  final String? prefixText;

  final Widget? prefixIcon;
  final Widget? suffixIcon;

  final Color? fillColor;
  final Color? labelTextColor;
  final Color? hintTextColor;
  final Color? textColor;
  final Color borderColor;

  final double paddingHorizontal;
  final double paddingVertical;
  final double borderRadius;
  final int? mexLength;
  final int? maxLines;

  final Function(String)? onSubmitted;
  final VoidCallback? onTap;

  final TextEditingController? controller;
  final TextInputAction textInputAction;
  final FormFieldValidator? validator;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: keyboardType,
      validator: validator,
      controller: controller,
      textInputAction: textInputAction,
      maxLength: mexLength,
      maxLines: maxLines,
      inputFormatters: inputFormatters,
      style: TextStyle(fontSize: 18, color: textColor),
      onFieldSubmitted: onSubmitted,
      onTap: onTap,
      decoration: InputDecoration(
        errorMaxLines: 2,
        filled: true,
        prefixIcon: prefixIcon,
        fillColor: fillColor,
        counterText: "",
        contentPadding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal,
          vertical: paddingVertical,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor),
        ),
        hintText: hintText,
        labelText: labelText,
        hintStyle: GoogleFonts.ebGaramond(fontSize: 18, color: hintTextColor),
        labelStyle: GoogleFonts.ebGaramond(fontSize: 18, color: labelTextColor),
        prefix: CommonText(text: prefixText ?? "", fontWeight: FontWeight.w400),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
