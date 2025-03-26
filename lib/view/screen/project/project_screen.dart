import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/project_controller.dart';
import 'package:portfolio/view/screen/project/widgets/project_item.dart';

Widget projects() => GetBuilder<ProjectController>(
    builder: (controller) => GridView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, mainAxisExtent: 300),
      itemBuilder: (context, index) => projectItem(),
    ),
  );
