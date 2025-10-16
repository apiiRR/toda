import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TextFieldTitle extends StatelessWidget {
  const TextFieldTitle({super.key, required this.title, required this.text});

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: kJakartaSemibold,
        ),
        Text(
          text,
          style: kJakartaRegular,
        )
      ],
    );
  }
}
