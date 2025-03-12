import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/view/component/text/common_text.dart';

import '../../component/header/header.dart';

class SkillScreen extends StatelessWidget {
  SkillScreen({super.key});

  final List<TimelineItem> timelineItems = const [
    TimelineItem(
        year: "2022",
        title: "Programming Hero",
        role: "Sr. Engineer (mobile)",
        subtitle: "Serving Million Students with new features."),
    TimelineItem(
        year: "2021",
        title: "Simec System",
        role: "Software Engineer (mobile)",
        subtitle:
            "Worked with Bangladesh Govt. and Japanese Clients on their HRM solutions."),
    TimelineItem(
        year: "2020",
        title: "Spinner Tech",
        role: "Android Developer",
        subtitle:
            "Built many Android applications related to Ecommerce and HRM systems."),
    TimelineItem(
        year: "2018",
        title: "Metacoders",
        role: "Android Developer",
        subtitle:
            "Built many Android applications related to food delivery and safety."),
  ];

  @override
  Widget build(BuildContext context) {
    print(Get.width);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: SizedBox(
          width: 1200,
          child: Column(children: [
            header(),
            50.height,
            Stack(
              children: [
                Container(
                  width: 4,
                  height: 1000,
                  decoration: BoxDecoration(color: Colors.green),
                ).center,
                Center(
                  child: SizedBox(
                    width: 1200,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: timelineItems.length,
                      itemBuilder: (context, index) {
                        final item = timelineItems[index];

                        bool isRight = index.isEven;

                        return Column(
                          children: [

                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.green, shape: BoxShape.circle),
                            ).center,
                            Container(
                                margin: EdgeInsets.only(
                                    right: isRight ? 650 : 0,
                                    left: isRight ? 0 : 650),
                                child: Align(
                                  alignment: isRight
                                      ? Alignment.topRight
                                      : Alignment.topLeft,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: isRight
                                        ? CrossAxisAlignment.end
                                        : CrossAxisAlignment.start,
                                    children: [
                                      CommonText(text: item.year),
                                      CommonText(text: item.title),
                                      CommonText(text: item.role),
                                      CommonText(
                                        text: item.subtitle,
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
      )),
    );
  }
}

class TimelineItem {
  final String year;
  final String title;
  final String role;
  final String subtitle;
  final bool isHighlight;

  const TimelineItem(
      {required this.year,
      required this.title,
      required this.role,
      required this.subtitle,
      this.isHighlight = false});
}
