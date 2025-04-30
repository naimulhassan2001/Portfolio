import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/view/component/text/common_text.dart';

class TimelineItem {
  const TimelineItem({
    required this.year,
    required this.title,
    required this.role,
    required this.subtitle,
    this.isHighlight = false,
  });

  final String year;
  final String title;
  final String role;
  final String subtitle;
  final bool isHighlight;
}

class Skills extends StatelessWidget {
  const Skills({super.key});

  static const List<TimelineItem> timelineItems = [
    TimelineItem(
        year: '2023',
        title: 'Flutter Development ',
        role: 'Cross platform (android, ios, web and ete)',
        subtitle:
            'Develop multiple applications from a single codebase using Flutter'),
    TimelineItem(
        year: '2021',
        title: 'Android Mobile App Development',
        role:
            'Since 2021, I have specialized in Android native development with Java',
        subtitle:
            'Develop Android mobile applications using both Java (native) and Flutter (cross-platform framework) '),
    TimelineItem(
        year: '2023',
        title: 'ios Development',
        role: 'I specialize in iOS app development',
        subtitle:
            'Develop ios mobile applications using Flutter (cross-platform framework) '),
    TimelineItem(
        year: '2023',
        title: 'Firebase',
        role: '',
        subtitle:
            'Implement backend functionality using Firebase services such as Cloud Functions, Firestore, Authentication, and Realtime Database to support scalable and secure mobile applications'),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600; // Breakpoint for mobile

        return ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: timelineItems.length,
          itemBuilder: (context, index) {
            return Center(
              child: ElasticIn(
                delay: Duration(milliseconds: 2500 + (300 * index)),
                duration: Duration(seconds: 3),
                child: TimelineCard(
                  item: timelineItems[index],
                  isRight: index.isEven && !isMobile, // Alternate only for web
                  isLast: index == timelineItems.length - 1,
                  isMobile: isMobile,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class TimelineCard extends StatelessWidget {
  final TimelineItem item;
  final bool isRight;
  final bool isLast;
  final bool isMobile;

  const TimelineCard({
    super.key,
    required this.item,
    required this.isRight,
    required this.isLast,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (!isMobile && !isRight) _buildTimeline(),
        _buildContent(),
        if (!isMobile && isRight) _buildTimeline(),
      ],
    );
  }

  Widget _buildTimeline() {
    return Column(
      children: [
        _buildCircle(),
        Container(width: 4, height: 180, color: Colors.green),
        if (isLast) _buildCircle(),
      ],
    );
  }

  Widget _buildContent() {
    return Container(
      width: isMobile ? double.infinity : 600,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(
          horizontal: isMobile ? 0 : 24, vertical: isMobile ? 12 : 10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.green),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonText(
            text: item.title,
          ),
          CommonText(
            text: 'Year: ${item.year}',
          ),
          if (item.role.isNotEmpty)
            CommonText(
              text: item.role,
            ),
          CommonText(
            text: item.subtitle,
            maxLines: 3,
          ),
        ],
      ),
    );
  }

  Widget _buildCircle() {
    return Container(
      height: 20,
      width: 20,
      decoration: const BoxDecoration(
        color: Colors.green,
        shape: BoxShape.circle,
      ),
    );
  }
}
