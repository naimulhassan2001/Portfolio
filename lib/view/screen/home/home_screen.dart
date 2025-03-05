import 'package:flutter/material.dart';
import 'package:portfolio/helpers/my_extension.dart';

import 'widgets/header.dart';
import 'widgets/hero_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [header(), 40.height, heroSection()]),
        ),
      ),
    );
  }
}
