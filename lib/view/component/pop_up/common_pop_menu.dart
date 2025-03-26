import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';

class PopUpMenu extends StatelessWidget {
  const PopUpMenu({
    super.key,
    required this.items,
    required this.selectedItem,
    required this.onTap,
    this.height = 30,
    this.selectedColor = AppColors.primaryColor,
    this.unselectedColor = Colors.transparent,
    this.style,
    this.isContainer = false,
    this.iconColor = AppColors.black,
    this.iconData = Icons.keyboard_arrow_down_outlined,
  });

  final List items;
  final List selectedItem;
  final Color selectedColor;
  final Color iconColor;
  final Color unselectedColor;
  final double height;
  final Function(int index) onTap;
  final TextStyle? style;
  final bool isContainer;
  final IconData iconData;

  @override
  Widget build(BuildContext context) => SizedBox(
      height: height,
      child: PopupMenuButton<String>(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: selectedColor),
        ),
        offset: const Offset(1, 1),
        padding: EdgeInsets.zero,
        itemBuilder:
            (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'option1',
                child: Column(
                  children: List.generate(
                    items.length,
                    (index) => GestureDetector(
                      onTap: () => onTap(index),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(color: selectedColor),
                                color:
                                    selectedItem.contains(
                                          items[index].toString(),
                                        )
                                        ? selectedColor
                                        : unselectedColor,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(items[index].toString(), style: style),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
        icon: Padding(
          padding: EdgeInsets.only(left: isContainer ? 40 : 0),
          child: Icon(iconData, color: iconColor, size: height),
        ),
      ),
    );
}
