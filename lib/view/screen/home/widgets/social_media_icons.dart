import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/helpers/other_helper.dart';

class SocialIcons extends StatefulWidget {
  const SocialIcons({super.key});

  @override
  SocialIconsState createState() => SocialIconsState();
}

class SocialIconsState extends State<SocialIcons> {
  final double btnSize = 48.0;

  final Map<String, Color> sites = {
    'whatsapp': const Color(0xFF25D366),
    'github': const Color(0xFF181717),
    'linkedin': const Color(0xFF0077B5),
    'facebook': const Color(0xFF3B5998),
  };

  final Map<String, IconData> icons = {
    'whatsapp': FontAwesomeIcons.whatsapp,
    'github': FontAwesomeIcons.github,
    'linkedin': FontAwesomeIcons.linkedin,
    'facebook': FontAwesomeIcons.facebookF,
  };

  final Map<String, String> links = {
    'whatsapp': 'https://wa.me/8801865965581',
    'github': 'https://github.com/naimulhassan2001',
    'linkedin': 'https://www.linkedin.com/in/naimulhassan0001',
    'facebook': 'https://www.facebook.com/naimul.hassan.7359',
  };

  String activeButton = '';

  @override
  Widget build(BuildContext context) => Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: sites.keys.toList().asMap().entries.map((entry) {
            int index = entry.key;
            String site = entry.value;
            String link = links[site] ?? '';
            bool isActive = activeButton == site;

            return InkWell(
              onTap: () => OtherHelper.openUrl(link),
              borderRadius: BorderRadius.circular(50),
              child: ElasticIn(
                delay: Duration(milliseconds: 5500 + (300 * index)),
                duration: const Duration(seconds: 3),
                child: MouseRegion(
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
                              width: btnSize * 1.4,
                              height: btnSize * 1.4,
                              color: Colors.transparent,
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
                ),
              ),
            );
          }).toList(),
        ),
      );
}
