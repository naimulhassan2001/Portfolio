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
        year: '2022',
        title: 'Programming Hero',
        role: 'Sr. Engineer (Mobile)',
        subtitle: 'Serving million students with new features.'),
    TimelineItem(
        year: '2021',
        title: 'Simec System',
        role: 'Software Engineer (Mobile)',
        subtitle:
            'Worked with Bangladesh Govt. and Japanese Clients on HRM solutions.'),
    TimelineItem(
        year: '2020',
        title: 'Spinner Tech',
        role: 'Android Developer',
        subtitle:
            'Developed multiple Android applications related to eCommerce and HRM.'),
    TimelineItem(
        year: '2018',
        title: 'Metacoders',
        role: 'Android Developer',
        subtitle:
            'Created food delivery and safety-related Android applications.'),
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
              child: TimelineCard(
                item: timelineItems[index],
                isRight: index.isEven && !isMobile, // Alternate only for web
                isLast: index == timelineItems.length - 1,
                isMobile: isMobile,
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
        Container(width: 4, height: 160, color: Colors.green),
        if (isLast) _buildCircle(),
      ],
    );
  }

  Widget _buildContent() {
    return Container(
      width: isMobile ? double.infinity : 450,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(
          horizontal: isMobile ? 0 : 24, vertical: isMobile ? 12 : 0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.green),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonText(
            text: item.year,
          ),
          CommonText(
            text: item.title,
          ),
          CommonText(
            text: item.role,
          ),
          CommonText(text: item.subtitle),
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
