import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../component/text/common_text.dart';

Widget headerItem(String title) {
  return TextButton(onPressed: () {}, child: CommonText(text: title));
}
