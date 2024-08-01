import 'package:c11_exam_sun_online/constant.dart';
import 'package:flutter/material.dart';

class CustomModyRow extends StatelessWidget {
  const CustomModyRow({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
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
        const Row(
          children: [
            Text(
              'See more ',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'SF Pro Display',
                color: k2PrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
              color: k2PrimaryColor,
            ),
          ],
        ),
      ],
    );
  }
}
