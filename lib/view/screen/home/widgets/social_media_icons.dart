import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIcons extends StatefulWidget {
  const SocialIcons({super.key});

  @override
  SocialIconsState createState() => SocialIconsState();
}

class SocialIconsState extends State<SocialIcons> {
  final double btnSize = 72.0;

  final Map<String, Color> sites = {
    'facebook': const Color(0xFF3B5998),
    'github': const Color(0xFF181717),
    'linkedin': const Color(0xFF0077B5),
    'google': const Color(0xFFDC4A38),
  };

  final Map<String, IconData> icons = {
    'facebook': FontAwesomeIcons.facebookF,
    'github': FontAwesomeIcons.github,
    'linkedin': FontAwesomeIcons.linkedin,
    'google': FontAwesomeIcons.google,
  };

  String activeButton = '';

  @override
  Widget build(BuildContext context) => Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
            sites.keys.map((site) {
              bool isActive = activeButton == site;

              return MouseRegion(
                onEnter: (_) {
                  setState(() {
                    activeButton = site;
                  });
                },
                onExit: (_) {
                  setState(() {
                    activeButton = '';
                  });
                },

                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  curve: Curves.easeInOut,
                  width: btnSize,
                  height: btnSize,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: isActive ? sites[site] : Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 15.0,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: -btnSize * 0.1,
                        left: -btnSize * 0.1,
                        child: Transform.rotate(
                          angle: 45 * 3.14159 / 180,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 350),
                            width: isActive ? btnSize * 1.4 : btnSize * 1.4,
                            height: isActive ? btnSize * 1.4 : btnSize * 1.4,
                            color:
                                isActive
                                    ? Colors.transparent
                                    : Colors.transparent,
                          ),
                        ),
                      ),
                      Center(
                        child: TweenAnimationBuilder<double>(
                          duration: const Duration(milliseconds: 350),
                          tween: Tween<double>(
                            begin: 1.0,
                            end: isActive ? 1.2 : 1.0,
                          ),
                          curve: Curves.easeInOut,
                          builder: (context, scale, child) => Transform.scale(
                              scale: scale,
                              child: Icon(
                                icons[site],
                                size: btnSize * 0.4,
                                color: isActive ? Colors.white : sites[site],
                              ),
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
      ),
    );
}
