import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:c11_exam_sun_online/widgets/custom_row.dart';
import 'package:flutter/material.dart';

class CustomHomeViewBody extends StatelessWidget {
  const CustomHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          const SizedBox(
            height: 28,
          ),
          const CustomRow(
            text: 'Categories',
          ),
          const SizedBox(
            height: 16,
          ),
          ButtonsTabBar(
            backgroundColor: const Color(0xffF5F5FA),
            radius: 14,
            unselectedBackgroundColor: const Color(0xffF5F5FA),
            contentPadding: const EdgeInsets.symmetric(horizontal: 28),
            buttonMargin: const EdgeInsets.symmetric(horizontal: 16),
            labelStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 22,
              fontFamily: 'SF Pro Display',
            ),
            tabs: const [
              Tab(
                text: "Art",
              ),
              Tab(
                text: "Business",
              ),
              Tab(
                text: "Comedy",
              ),
              Tab(
                text: "Drama",
              ),
            ],
          ),
          const SizedBox(
            height: 36,
          ),
          const CustomRow(
            text: 'Recommended For You',
          ),
        ],
      ),
    );
  }
}
