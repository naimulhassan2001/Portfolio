import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/view/screen/home/home_screen.dart';

import '../../../helpers/resize.dart';
import '../../../utils/app_string.dart';
import '../../component/text/common_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    init();
    super.initState();
  }

  init() {
    Future.delayed(
      Duration(milliseconds: 3000),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElasticIn(
            delay: Duration(milliseconds: 100),
            duration: Duration(seconds: 3),
            child: CommonText(
              text: '${AppString.greeting} ${AppString.myName}',
              fontSize: Resize.homeMyNameTextSize(),
              fontWeight: FontWeight.bold,
            ),
          ).center,
          ElasticIn(
            delay: Duration(milliseconds: 100),
            duration: Duration(seconds: 3),
            child: CommonText(
              text: AppString.softwareEngineer,
              fontSize: Resize.homeMyNameTextSize(),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )),
    );
  }
}
