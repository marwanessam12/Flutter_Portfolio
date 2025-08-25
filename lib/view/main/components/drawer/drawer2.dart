import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/main/components/drawer/about.dart';
import 'package:flutter_portfolio/view/main/components/drawer/contact_icons.dart';
import 'package:flutter_portfolio/view/main/components/drawer/knowledges.dart';
import 'package:flutter_portfolio/view/main/components/drawer/my_skill.dart';
import 'package:flutter_portfolio/view/main/components/drawer/personal_info.dart';
import 'package:flutter_portfolio/view/main/components/navigation_button.dart';

import '../../../../res/constants.dart';

class CustomDrawer2 extends StatefulWidget {
  final PageController controller;

  const CustomDrawer2({super.key, required this.controller});

  @override
  State<CustomDrawer2> createState() => _CustomDrawer2State();
}

class _CustomDrawer2State extends State<CustomDrawer2> {
  bool showAbout = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: bgColor,
      child: SafeArea(
        child: showAbout
            // 👉 About tab
            ? SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // back button using same style
                    NavigationTextButton(
                      text: "← Back",
                      onTap: () {
                        setState(() {
                          showAbout = false;
                        });
                      },
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    const About(),
                    const PersonalInfo(),
                    const MySKills(),
                    const Knowledges(),
                    const Divider(),
                    const SizedBox(height: defaultPadding),
                    const ContactIcon(),
                  ],
                ),
              )
            // 👉 Main menu tab
            : Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const About(),
                    NavigationTextButton(
                      text: "Home",
                      onTap: () {
                        Navigator.pop(context);
                        widget.controller.animateToPage(
                          0,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                    ),
                    NavigationTextButton(
                      text: "About me",
                      onTap: () {
                        setState(() {
                          showAbout = true;
                        });
                      },
                    ),
                    NavigationTextButton(
                      text: "Projects",
                      onTap: () {
                        Navigator.pop(context);
                        widget.controller.animateToPage(
                          1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                    ),
                    NavigationTextButton(
                      text: "Certifications",
                      onTap: () {
                        Navigator.pop(context);
                        widget.controller.animateToPage(
                          2,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
