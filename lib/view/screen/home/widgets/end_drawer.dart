import 'package:flutter/material.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/utils/app_colors.dart';

import '../../../../utils/app_string.dart';
import '../../../component/header/header_item.dart';

Drawer endDrawer() {
  return Drawer(
    backgroundColor: AppColors.background,
    width: 250,
    child: ListView(
      children: [
        50.height,
        headerItem(
          vertical: 6,
          title: AppString.home,
        ),
        headerItem(
          vertical: 6,
          title: AppString.project,
        ),
        headerItem(
          vertical: 6,
          title: AppString.skills,
        ),
        headerItem(
          vertical: 6,
          title: AppString.about,
        ),
        headerItem(
          vertical: 6,
          title: AppString.contact,
        ),
      ],
    ),
  );
}
