import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/helpers/my_extension.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/app_string.dart';
import 'package:portfolio/view/component/text/common_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FaqItem extends StatefulWidget {
  const FaqItem({super.key, required this.item});

  final Map item;

  @override
  State<FaqItem> createState() => _FaqItemState();
}

class _FaqItemState extends State<FaqItem> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _iconAnimation;
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _iconAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
      if (isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleExpansion,
      child: AnimatedContainer(
        width: Get.width > 700 ? 700 : Get.width,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: const Color(0xff1C1C1C),
          borderRadius: BorderRadius.circular(12),
        ),
        duration: const Duration(seconds: 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: widget.item['question'],
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    style: true,
                    bottom: 10,
                  ),
                  AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    transitionBuilder: (
                      Widget child,
                      Animation<double> animation,
                    ) {
                      return FadeTransition(
                        opacity: animation,
                        child: SizeTransition(
                          sizeFactor: animation,
                          axisAlignment: -1.0,
                          child: child,
                        ),
                      );
                    },
                    child:
                        isExpanded
                            ? CommonText(
                              key: ValueKey<bool>(isExpanded),
                              text: widget.item['answer'],
                              maxLines: 10,
                              fontWeight: FontWeight.w400,
                              style: true,
                              textAlign: TextAlign.start,
                              fontSize: 20,
                            )
                            : SizedBox.shrink(),
                  ),
                ],
              ),
            ),
            RotationTransition(
              turns: _iconAnimation,
              child: Icon(
                isExpanded ? FontAwesomeIcons.minus : FontAwesomeIcons.plus,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
