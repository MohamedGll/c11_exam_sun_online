import 'package:c11_exam_sun_online/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/custom_home_view_body.dart';

class AudiBooksView extends StatefulWidget {
  const AudiBooksView({super.key});

  @override
  State<AudiBooksView> createState() => _AudiBooksViewState();
}

class _AudiBooksViewState extends State<AudiBooksView> {
  int selectedIndex = 0;

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
                color: kPrimaryColor,
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
      body: const CustomAudiBooksViewBody(),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color(0xff6A6A8B),
        selectedItemColor: kPrimaryColor,
        currentIndex: selectedIndex,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.house,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_books_rounded,
            ),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
