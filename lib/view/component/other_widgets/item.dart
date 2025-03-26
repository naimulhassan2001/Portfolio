import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/view/component/image/common_image.dart';
import 'package:portfolio/view/component/text/common_text.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    this.icon,
    required this.title,
    this.image = '',
    this.disableDivider = false,
    this.onTap,
    this.color = AppColors.black,
    this.vertical = 4,
    this.horizontal = 24,
    this.disableIcon = false,
  });

  final IconData? icon;
  final String title;
  final String image;
  final bool disableDivider;
  final bool disableIcon;
  final VoidCallback? onTap;
  final Color color;
  final double vertical;
  final double horizontal;

  @override
  Widget build(BuildContext context) => InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
        child: Column(
          children: [
            Row(
              children: [
                icon != null
                    ? Icon(icon, color: color)
                    : CommonImage(imageSrc: image),
                CommonText(
                  text: title,
                  color: color,
                  fontSize: 18,
                  left: 16,
                ),
                const Spacer(),
                disableIcon
                    ? const SizedBox()
                    : Icon(Icons.arrow_forward_ios_outlined, size: 20),
              ],
            ),
            disableDivider ? const SizedBox() : const Divider(),
          ],
        ),
      ),
    );
}
