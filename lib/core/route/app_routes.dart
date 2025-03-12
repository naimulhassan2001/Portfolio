import 'package:get/get.dart';
import 'package:portfolio/view/screen/about/about_screen.dart';
import 'package:portfolio/view/screen/contact/contact_screen.dart';
import 'package:portfolio/view/screen/home/home_screen.dart';
import 'package:portfolio/view/screen/project/project_screen.dart';
import 'package:portfolio/view/screen/skills/skillsscreen.dart';

import '../../view/screen/test_screen.dart';

class AppRoutes {
  static const String test = "/test_screen.dart";
  static const String home = "/home";
  static const String contact = "/contact";
  static const String skills = "/skills";
  static const String about = "/about";
  static const String project = "/project";

  static List<GetPage> routes = [
    GetPage(name: test, page: () => const TestScreen()),
    GetPage(name: home, page: () => const HomeScreen()),
    GetPage(name: contact, page: () => const ContactScreen()),
    GetPage(name: skills, page: () => SkillScreen()),
    GetPage(name: about, page: () => AboutScreen()),
    GetPage(name: project, page: () => ProjectScreen()),
  ];
}
