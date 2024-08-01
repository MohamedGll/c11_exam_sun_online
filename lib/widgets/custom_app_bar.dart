import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/logo.png',
        ),
        const SizedBox(
          width: 12,
        ),
        const Text(
          'Mody',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            fontFamily: 'SF Pro Display',
          ),
        ),
        const Spacer(),
        badges.Badge(
          position: badges.BadgePosition.topEnd(end: 2, top: 2),
          badgeContent: const CircleAvatar(
            radius: .1,
          ),
          child: const Icon(
            Icons.notifications,
            size: 28,
          ),
        )
      ],
    );
  }
}
