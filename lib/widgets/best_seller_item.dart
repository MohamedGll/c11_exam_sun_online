import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 260,
      decoration: BoxDecoration(
        color: const Color(0xffF5F5FA),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Row(
          children: [
            Image.asset(
              'assets/images/Image Placeholder 2.png',
              height: 120,
              width: 120,
            ),
            const SizedBox(
              width: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 46),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Light Mage',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Laurie Forest',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'SF Pro Display',
                      color: Color(0xff6A6A8B),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
