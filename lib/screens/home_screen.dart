import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../widgets/app_drawer.dart';
import '../widgets/badge.dart';
import '../widgets/search_bar.dart';
import '../custom/top_prod.dart';
import '../custom/image_slider.dart';

class TheHomeScreen extends StatefulWidget {
  const TheHomeScreen({super.key});

  @override
  State<TheHomeScreen> createState() => _TheHomeScreenState();
}

class _TheHomeScreenState extends State<TheHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          title: Container(
              padding: const EdgeInsets.only(left: 5),
              child: Image.asset(
                'assets/images/justasgood.png',
                width: 300,
              )),
          actions: [
            Consumer(
              builder: (_, cart, ch) => MyBadge(
                child: Padding(
                  padding: const EdgeInsets.only(right: 25, bottom: 15),
                  child: ch ??
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_cart,
                            size: 50,
                          )),
                ),
              ),
            )
          ]),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '⏳Delivery in',
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                offset:
                                    Offset(1.0, 2.0), // Position of the shadow
                                blurRadius: 15.0, // Blurriness of the shadow
                                color: Color.fromARGB(
                                    255, 47, 47, 47), // Color of the shadow
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(' 5 minutes',
                            style: TextStyle(
                              shadows: [
                                Shadow(
                                  offset: Offset(
                                      1.0, 2.0), // Position of the shadow
                                  blurRadius: 15.0, // Blurriness of the shadow
                                  color: Color.fromARGB(
                                      255, 66, 66, 66), // Color of the shadow
                                ),
                              ],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.5), // Shadow color
                            blurRadius: 10.0, // Softness of the shadow
                            spreadRadius: 1.0, // Extent of the shadow
                            offset: const Offset(
                                1.0, 4.0), // Position of the shadow
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 22,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.asset('assets/images/aiMe.jpg')),
                      ),
                    )
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            const Thesearchbar(),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: const Color(0xFFFFA500),
              width: 500,
              child: const Text(
                "TOP PRODUCTS ",
                style: TextStyle(
                    shadows: [
                      Shadow(
                        offset: Offset(
                            1.0, 2.0), // Position of the shadow x,y plane
                        blurRadius: 15.0, // Blurriness of the shadow
                        color: Color.fromARGB(
                            255, 66, 66, 66), // Color of the shadow
                      ),
                    ],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DOODLE'),
              ),
            ),
            const TopProducts(),
            SizedBox(
              height: 10,
            ),
            const TheImageSlider(
              imageUrls: [
                'https://cdn.pixabay.com/photo/2015/03/30/12/43/bananas-698608_1280.jpg',
                'https://cdn.pixabay.com/photo/2017/06/17/09/47/shopping-2411667_1280.jpg',
                'https://cdn.pixabay.com/photo/2016/04/21/11/32/groceries-1343141_1280.jpg'
              ],
            )
          ],
        ),
      ),
    );
  }
}
