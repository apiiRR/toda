import 'package:flutter/material.dart';
import '../../../utils/app_styles.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {super.key,
      required this.image,
      required this.text,
      required this.onTap});

  final String image;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 207, 220, 243),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: SizedBox(height: 36, child: Image.asset(image)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            style: kJakartaBold,
          )
        ],
      ),
    );
  }
}
