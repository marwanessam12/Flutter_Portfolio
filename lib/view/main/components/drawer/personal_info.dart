import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  Widget _buildLink({
    required String title,
    required String text,
    required String url,
  }) {
    return _HoverLink(
      title: title,
      text: text,
      onTap: () => _launchUrl(url),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding / 2),
        _buildLink(
          title: 'Contact',
          text: '+201117322224',
          url: "https://wa.me/201117322224",
        ),
        _buildLink(
          title: 'Email',
          text: 'marwanessam811@gmail.com',
          url: "mailto:marwanessam811@gmail.com",
        ),
        _buildLink(
          title: 'LinkedIn',
          text: '@Marwan Essam',
          url: "https://www.linkedin.com/in/marwanessam12",
        ),
        _buildLink(
          title: 'Github',
          text: '@marwanessam12',
          url: "https://github.com/marwanessam12",
        ),
        const SizedBox(height: defaultPadding),
        const Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: defaultPadding),
      ],
    );
  }
}

class _HoverLink extends StatefulWidget {
  final String title;
  final String text;
  final VoidCallback onTap;

  const _HoverLink({
    required this.title,
    required this.text,
    required this.onTap,
  });

  @override
  State<_HoverLink> createState() => _HoverLinkState();
}

class _HoverLinkState extends State<_HoverLink> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: AreaInfoText(
          title: widget.title,
          text: widget.text,
          textStyle: TextStyle(
            color: _hovering ? Colors.blue : Colors.white,
            decoration:
                _hovering ? TextDecoration.underline : TextDecoration.none,
            decorationColor: _hovering ? Colors.blue : Colors.white,
            decorationThickness: 2,
          ),
        ),
      ),
    );
  }
}
