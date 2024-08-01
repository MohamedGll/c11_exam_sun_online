import 'package:c11_exam_sun_online/constant.dart';
import 'package:flutter/material.dart';

class CircularLabel extends StatelessWidget {
  const CircularLabel({super.key, required this.radius});
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(8.0),
      child: const CircleAvatar(
        backgroundColor: k2PrimaryColor,
        radius: 5,
      ),
    );
  }
}
