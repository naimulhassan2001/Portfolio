import 'package:flutter/material.dart';
import 'package:portfolio/view/component/footer/footer.dart';
import 'package:portfolio/view/component/header/header.dart';
import 'package:portfolio/view/screen/project/widgets/project_item.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          header(),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return projectItem();
              },
            ),
          ),
          // footer()
        ],
      ),
    );
  }
}
