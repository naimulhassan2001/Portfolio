import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

  static BuildContext context = Get.context!;

  static double isSize() => MediaQuery.of(context).size.width;

  static bool isMobile() => MediaQuery.of(context).size.width < 600;

  static bool isTablet() =>
      MediaQuery.of(context).size.width < 1024 &&
      MediaQuery.of(context).size.width >= 600;

  static bool isDesktop() => MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (size.width >= 1024) {
      return desktop;
    } else if (size.width >= 770 && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}
