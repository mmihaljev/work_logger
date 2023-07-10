import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../data/temp/demo_data.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 16, right: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Welcome back,',
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Let's get to work!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                  Container(
                    width: 48,
                    margin: const EdgeInsets.only(top: 16, right: 8, bottom: 16),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Colors.white12,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.settings_sharp,
                          color: Colors.white70, size: 24),
                    ),
                  ),
                ],
              ),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          height: 260,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                height: 100,
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0)),
                    border: Border.all(
                      color: Colors.black87,
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(Icons.groups_sharp,
                            size: 44, color: Colors.white70),
                        const SizedBox(width: 16),
                        const Text('Active Clients',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16)),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.white24,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                '3',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 80,
                  left: 0,
                  right: 0,
                  height: 100,
                  child: Container(
                    height: 68,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0)),
                      border: Border.all(
                        color: Colors.black87,
                        width: 2,
                      ),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 12),
                      child: Row(
                        children: [
                          const Icon(Icons.timer_sharp,
                              size: 44, color: Colors.white70),
                          const SizedBox(width: 16),
                          const Text('Average Task Time',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16)),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white24,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Text(
                                  '56 min',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Positioned(
                  top: 160,
                  left: 0,
                  right: 0,
                  height: 92,
                  child: Container(
                    height: 68,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                      border: Border.all(
                        color: Colors.black87,
                        width: 2,
                      ),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          const Icon(Icons.euro_sharp,
                              size: 44, color: Colors.white70),
                          const SizedBox(width: 16),
                          const Text('Current Earnings',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16)),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white24,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Text(
                                  '123.99',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            'Current Projects',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
            height: 160,
            autoPlay: true,
            aspectRatio: 1.0,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}