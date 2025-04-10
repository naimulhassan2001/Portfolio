import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class OtherHelper {
  static RegExp emailRegexp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );

  static String? validator(value) {
    if (value.isEmpty) {
      return 'This field is required';
    } else {
      return null;
    }
  }

  static String? emailValidator(value) {
    if (value!.isEmpty) {
      return 'This field is required'.tr;
    } else if (!emailRegexp.hasMatch(value)) {
      return 'Enter valid email'.tr;
    } else {
      return null;
    }
  }

  static Future<String> openDatePicker(TextEditingController controller) async {
    DateTime? picked = await showDatePicker(
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(primary: AppColors.white),
        ),
        child: child!,
      ),
      context: Get.context!,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      controller.text = '${picked.year}/${picked.month}/${picked.day}';
      return picked.toIso8601String();
    }

    return '';
  }

  static Future<String> openTimePicker(TextEditingController controller) async {
    TimeOfDay? picked = await showTimePicker(
      context: Get.context!,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      controller.text =
          "${picked.hour} : ${picked.minute < 10 ? "0${picked.minute}" : picked.minute}";
      return "${picked.hour}:${picked.minute < 10 ? "0${picked.minute}" : picked.minute}";
    }
    return '';
  }

  static Future<void> openUrl(String url) async {
    url = url.trim();
    if (url.isEmpty) return;
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      if (kDebugMode) {
        print('Could not launch $url');
      }
    }
  }
}
