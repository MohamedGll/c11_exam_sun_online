import 'package:c11_exam_sun_online/constant.dart';
import 'package:c11_exam_sun_online/widgets/custom_app_bar.dart';
import 'package:c11_exam_sun_online/widgets/custom_mody_row.dart';
import 'package:c11_exam_sun_online/widgets/feeling_item.dart';
import 'package:flutter/material.dart';

class CustomModyViewBody extends StatelessWidget {
  const CustomModyViewBody({super.key});
  final List<String> images = const [
    'assets/images/Frame1.png',
    'assets/images/Frame2.png',
    'assets/images/Frame4.png',
    'assets/images/Frame3.png',
  ];
  final List<String> labels = const [
    'Love',
    'Cool',
    'Happy',
    'Sad',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          const CustomAppBar(),
          const SizedBox(
            height: 32,
          ),
          const Row(
            children: [
              Text(
                'Hello, ',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'SF Pro Display',
                ),
              ),
              Text(
                'Sara Rose',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'How are you feeling today ?',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'SF Pro Display',
              ),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return FeelingItem(
                  image: images[index],
                  label: labels[index],
                );
              },
              itemCount: images.length,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const CustomModyRow(
            text: 'Feature',
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffECFDF3),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              children: [
                ListTile(
                  title: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: Text(
                      'Positive vibes',
                      style: TextStyle(
                        color: Color(0xff344054),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Boost your mood with positive vibes',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                  trailing: Image.asset(
                    'assets/images/Walking the Dog.png',
                    height: 90,
                    width: 102,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 22),
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: k2PrimaryColor,
                        ),
                        child: const Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Text(
                        '10 mins',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
