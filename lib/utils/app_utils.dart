import 'package:flutter/foundation.dart';

import 'package:get/get.dart';

import 'package:portfolio/utils/app_colors.dart';

class Utils {
  static snackBarMessage(String title, String message) {
    Get.snackbar(
      kDebugMode ? title : 'oops!',
      message,
      backgroundColor: AppColors.white,
    );
  }
}
