import 'package:c11_exam_sun_online/constant.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_home_view_body.dart';

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
            child: ImageIcon(
              AssetImage(
                'assets/images/Setting.png',
              ),
              size: 28,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
      body: const CustomAudiBooksViewBody(),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color(0xff6A6A8B),
        selectedItemColor: kPrimaryColor,
        selectedLabelStyle: const TextStyle(
          fontFamily: 'SF Pro Display',
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelStyle: const TextStyle(
          fontFamily: 'SF Pro Display',
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        currentIndex: selectedIndex,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/house.png',
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/Search.png',
              ),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/Document.png',
              ),
            ),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
