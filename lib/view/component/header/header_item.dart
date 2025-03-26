import 'package:flutter/material.dart';

import 'package:portfolio/view/component/text/common_text.dart';

Widget headerItem({required String title, VoidCallback? onTap}) => TextButton(onPressed: onTap, child: CommonText(text: title));
