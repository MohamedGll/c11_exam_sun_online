import 'package:c11_exam_sun_online/constant.dart';
import 'package:c11_exam_sun_online/widgets/custom_mody_view_body.dart';
import 'package:flutter/material.dart';

class ModyView extends StatefulWidget {
  const ModyView({super.key});

  @override
  State<ModyView> createState() => _ModyViewState();
}

class _ModyViewState extends State<ModyView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CustomModyViewBody(),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        selectedItemColor: k2PrimaryColor,
        unselectedItemColor: const Color(0xff667085),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          fontFamily: 'SF Pro Display',
          fontSize: 24,
          fontWeight: FontWeight.w900,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/home.png',
              ),
            ),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/menu.png',
              ),
            ),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/calender.png',
              ),
            ),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/person.png',
              ),
            ),
            label: '.',
          ),
        ],
      ),
    );
  }
}
