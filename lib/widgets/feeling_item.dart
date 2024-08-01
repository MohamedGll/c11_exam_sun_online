import 'package:flutter/material.dart';

class FeelingItem extends StatelessWidget {
  const FeelingItem({super.key, required this.image, required this.label});
  final String image;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffE4E7EC),
            ),
            child: Image.asset(
              image,
              width: 60,
              height: 60,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'SF Pro Display',
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
