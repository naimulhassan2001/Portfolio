import 'package:get/get.dart';
import 'package:portfolio/view/screen/home/home_screen.dart';

import '../../view/screen/test_screen.dart';

class AppRoutes {
  static const String test = "/test_screen.dart";
  static const String home = "/home";

  static List<GetPage> routes = [
    GetPage(name: test, page: () => const TestScreen()),
    GetPage(name: home, page: () => const HomeScreen()),
  ];
}
