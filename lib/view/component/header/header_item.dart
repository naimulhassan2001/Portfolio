import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:portfolio/view/component/text/common_text.dart';

Widget headerItem(
        {required String title, VoidCallback? onTap, double vertical = 0}) =>
    Padding(
      padding: EdgeInsets.symmetric(vertical: vertical),
      child: TextButton(onPressed: onTap, child: CommonText(text: title)),
    );
