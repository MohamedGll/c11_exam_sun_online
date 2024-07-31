import 'package:c11_exam_sun_online/constant.dart';
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'See more',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'SF Pro Display',
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
