import 'package:flutter/material.dart';

import '../text/common_text.dart';

Widget headerItem({required String title, VoidCallback? onTap}) {
  return TextButton(onPressed: onTap, child: CommonText(text: title));
}
