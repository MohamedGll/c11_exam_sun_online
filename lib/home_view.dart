import 'package:c11_exam_sun_online/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Image.asset(
            'assets/images/Logo Small.png',
          ),
        ),
        title: const Row(
          children: [
            Text(
              'Audi',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'SF Pro Display',
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Books',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'SF Pro Display',
              ),
            ),
            Text(
              '.',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'SF Pro Display',
                color: Color(0xffE8805E),
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: FaIcon(
              FontAwesomeIcons.gear,
              color: kPrimaryColor,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
