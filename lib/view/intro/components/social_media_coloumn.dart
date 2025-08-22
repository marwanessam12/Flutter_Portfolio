import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/intro/components/social_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
            icon: 'assets/icons/linkedin.svg',
            onTap: () => launchUrl(
                Uri.parse('https://www.linkedin.com/in/marwanessam12'))),
        SocialMediaIcon(
          icon: 'assets/icons/github.svg',
          onTap: () => launchUrl(Uri.parse('https://github.com/marwanessam12')),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.4),
          child: InkWell(
            onTap: () {
              launchUrl(Uri.parse('https://wa.me/201117322224'));
            },
            borderRadius: BorderRadius.circular(defaultPadding + 10),
            child: const Icon(
              FontAwesomeIcons.whatsapp,
              color: Colors.white,
              size: 15,
            ),
          ),
        ),
        const SocialMediaIcon(
          icon: 'assets/icons/dribble.svg',
        ),
      ],
    );
  }
}
