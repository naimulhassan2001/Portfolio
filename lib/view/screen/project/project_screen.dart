import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/project_controller.dart';
import 'package:portfolio/helpers/resize.dart';
import 'package:portfolio/view/screen/project/widgets/project_item.dart';

Widget projects() => GetBuilder<ProjectController>(
      builder: (controller) => GridView.builder(
        itemCount: controller.projects.length,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Resize.projectCrossCount(),
            mainAxisExtent: Resize.projectMainAxisExtent()),
        itemBuilder: (context, index) =>
            projectItem(controller.projects[index]),
      ),
    );
