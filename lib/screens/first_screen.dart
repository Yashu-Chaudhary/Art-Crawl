import 'package:art_crawl/screens/home_screen.dart';
import 'package:art_crawl/utils/constant/images.dart';
import 'package:art_crawl/utils/constant/string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: deviceHight,
            width: deviceWidth,
            decoration: const BoxDecoration(color: Colors.black),

            // background image and text on it
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(PImages.background1),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                // Text on image
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Expanded(child: SizedBox()),
                          const Text(
                            PTexts.artCrawl,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 80,
                              fontFamily: 'Poppins',
                              fontStyle: FontStyle.italic,

                            ),
                          ),
                          const Text(
                            PTexts.yourTextToArtAndCulture,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            PTexts.exploreDiscoverAndEnjoy,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          GestureDetector(
                            onTap: ()=> Get.to(() => const HomeScreen()),
                            child: Container(
                                height: 40,
                                width: deviceWidth * 0.9,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      PTexts.buyMoreTickets,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(Icons.east, color: Colors.white, size: 25),
                                  ],
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
