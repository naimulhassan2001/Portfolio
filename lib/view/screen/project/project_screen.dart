import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/project_controller.dart';
import 'package:portfolio/view/component/header/header.dart';
import 'package:portfolio/view/screen/project/widgets/project_item.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ProjectController>(
        builder: (controller) => Column(
          children: [
            header(),
            Expanded(
              child: ListView.builder(
                itemCount: controller.projects.length,
                itemBuilder: (context, index) {
                  return projectItem(controller.projects[index]);
                },
              ),
            ),
            // footer()
          ],
        ),
      ),
    );
  }
}
