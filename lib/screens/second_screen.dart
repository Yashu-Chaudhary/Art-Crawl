import 'package:art_crawl/utils/common/container_with_2texts_and_icon.dart';
import 'package:art_crawl/utils/common/header.dart';
import 'package:art_crawl/utils/images.dart';
import 'package:art_crawl/utils/string_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 40),

              // Image, Text and Button
              const PHeader(
                text: PTexts.heysara,
                isCircleAvatarImage: true,
                image: AssetImage(PImages.profile),
              ),
              const SizedBox(height: 40),

              Container(
                height: 210,
                width: deviceWidth,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            PTexts.yourNextTrip,
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(Icons.abc, color: Colors.white, size: 30)
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        PTexts.paris,
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Stack(
                            children: [
                              Positioned(
                                  child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage(PImages.profile))),
                              Positioned(
                                  left: 22,
                                  child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage(PImages.profile))),
                              // Positioned(left: 22,child: CircleAvatar(backgroundImage: AssetImage(PImages.profile))),
                              // Positioned(right: 32,child: CircleAvatar(backgroundImage: AssetImage(PImages.profile))),
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 130,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.white),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    PTexts.buyMoreTickets,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.east,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // image, 2 text and icon in circle
              const PContainerWithImage2TextsAndIcon(
                image: AssetImage(PImages.profile),
                title: PTexts.placeOfVersailtes,
                subTitle: PTexts.royalResidence,
              ),
              const SizedBox(height: 8),
              const PContainerWithImage2TextsAndIcon(
                image: AssetImage(PImages.profile),
                title: PTexts.musicDeTOrangerie,
                subTitle: PTexts.artMusium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}