import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class AreaInfoText extends StatelessWidget {
  final String title;
  final String text;
  final TextStyle? textStyle; // 👈 new parameter for the "text" part

  const AreaInfoText({
    super.key,
    required this.title,
    required this.text,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            text,
            style: textStyle ?? const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
