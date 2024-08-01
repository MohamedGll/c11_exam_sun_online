import 'package:c11_exam_sun_online/widgets/custom_app_bar.dart';
import 'package:c11_exam_sun_online/widgets/custom_mody_row.dart';
import 'package:c11_exam_sun_online/widgets/exercise_item.dart';
import 'package:c11_exam_sun_online/widgets/feeling_item.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomModyViewBody extends StatefulWidget {
  const CustomModyViewBody({super.key});

  @override
  State<CustomModyViewBody> createState() => _CustomModyViewBodyState();
}

class _CustomModyViewBodyState extends State<CustomModyViewBody> {
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

  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Column(
        children: [
          const SizedBox(
            height: 55,
          ),
          const CustomAppBar(),
          Expanded(
            child: ListView(
              children: [
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
                const SizedBox(
                  height: 16,
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, bottom: 22),
                        child: Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff32D583),
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
                const SizedBox(
                  height: 18,
                ),
                Center(
                  child: SmoothPageIndicator(
                    controller: pageController, // PageController
                    count: 3,
                    effect: const WormEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      activeDotColor: Color(0xff98A2B3),
                      dotColor: Color(0xffD9D9D9),
                    ), // your preferred effect
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const CustomModyRow(
                  text: 'Exercise',
                ),
                const Row(
                  children: [
                    Expanded(
                      child: ExerciseItem(
                        color: Color(0xffF9F5FF),
                        text: 'Relaxation',
                        image: 'assets/images/Relax.png',
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      child: ExerciseItem(
                        color: Color(0xffFDF2FA),
                        text: 'Meditation',
                        image: 'assets/images/meditation.png',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: ExerciseItem(
                        color: Color(0xffFFFAF5),
                        text: 'Beathing',
                        image: 'assets/images/beathing.png',
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      child: ExerciseItem(
                        color: Color(0xffF0F9FF),
                        text: 'Yoga',
                        image: 'assets/images/yoga.png',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
