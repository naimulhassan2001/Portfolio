import 'package:flutter/cupertino.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/app_string.dart';

import 'header_item.dart';

Widget header() {
  return Container(
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.symmetric(horizontal: 30),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: AppColors.white, width: 20)),
    ),
    child: Row(
      children: [
        headerItem(AppString.myPortfolio),
        Spacer(),
        headerItem(AppString.home),
        headerItem(AppString.project),
        headerItem(AppString.skills),
        headerItem(AppString.about),
        headerItem(AppString.contact),
      ],
    ),
  );
}
