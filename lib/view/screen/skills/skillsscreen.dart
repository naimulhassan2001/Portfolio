import 'package:flutter/material.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/view/component/text/common_text.dart';

Widget skills() {
  const List<TimelineItem> timelineItems = [
    TimelineItem(
        year: '2022',
        title: 'Programming Hero',
        role: 'Sr. Engineer (mobile)',
        subtitle: 'Serving Million Students with new features.'),
    TimelineItem(
        year: '2021',
        title: 'Simec System',
        role: 'Software Engineer (mobile)',
        subtitle:
            'Worked with Bangladesh Govt. and Japanese Clients on their HRM solutions.'),
    TimelineItem(
        year: '2020',
        title: 'Spinner Tech',
        role: 'Android Developer',
        subtitle:
            'Built many Android applications related to Ecommerce and HRM systems.'),
    TimelineItem(
        year: '2018',
        title: 'Metacoders',
        role: 'Android Developer',
        subtitle:
            'Built many Android applications related to food delivery and safety.'),
  ];

  return Center(
    child: SizedBox(
      width: 1200,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: timelineItems.length,
        itemBuilder: (context, index) {
          TimelineItem item = timelineItems[index];

          bool isRight = index.isEven;

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Container(
                    width: 4,
                    height: 140,
                    decoration: BoxDecoration(color: Colors.green),
                  ).center,
                  Column(
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
                      if (index == timelineItems.length - 1)
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ).center,
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    ),
  );
}

class TimelineItem {

  const TimelineItem(
      {required this.year,
      required this.title,
      required this.role,
      required this.subtitle,
      this.isHighlight = false});
  final String year;
  final String title;
  final String role;
  final String subtitle;
  final bool isHighlight;
}
