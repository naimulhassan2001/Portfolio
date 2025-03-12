import 'package:flutter/material.dart';
import 'package:portfolio/view/component/footer/footer.dart';
import 'package:portfolio/view/component/header/header.dart';

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
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container();
              },
            ),
          ),
          footer()
        ],
      ),
    );
  }
}
