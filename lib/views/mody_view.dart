import 'package:c11_exam_sun_online/constant.dart';
import 'package:c11_exam_sun_online/widgets/circular_label.dart';
import 'package:c11_exam_sun_online/widgets/custom_mody_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        currentIndex: selectedIndex,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        selectedItemColor: k2PrimaryColor,
        unselectedItemColor: const Color(0xff667085),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house),
            label: '',
            activeIcon: CircularLabel(
              radius: 12.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: '',
            activeIcon: CircularLabel(
              radius: 12.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: '',
            activeIcon: CircularLabel(
              radius: 12.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
            activeIcon: CircularLabel(
              radius: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
