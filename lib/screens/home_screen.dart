import 'package:art_crawl/screens/widgets/circle_avatar_stack.dart';
import 'package:art_crawl/screens/your%20tickets/your_tickets.dart';
import 'package:art_crawl/utils/common/container_with_2texts_and_icon.dart';
import 'package:art_crawl/utils/common/header.dart';
import 'package:art_crawl/utils/common/widgets/container_button_with_text_and_icon.dart';
import 'package:art_crawl/utils/common/widgets/date_duration_of_ticket.dart';
import 'package:art_crawl/utils/constant/images.dart';
import 'package:art_crawl/utils/constant/string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // Image, Text and Button
              const PHeader(
                text: PTexts.heysara,
                isCircleAvatarImage: true,
                image: AssetImage(PImages.profile),
              ),
              const SizedBox(height: 20),

              // container Paris vala
              Container(
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
                          Icon(Icons.flight, color: Colors.white, size: 30)
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
                          GestureDetector(
                              onTap: () => Get.to(() => const YourTickets()),
                              child: const PCircleAvatarStack()),
                          const PContainerButtonWithIcon(
                            icon: Icons.east,
                            text: PTexts.buyMoreTickets,
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
                image: AssetImage(PImages.versalites),
                title: PTexts.placeOfVersailtes,
                subTitle: PTexts.royalResidence,
              ),
              const SizedBox(height: 8),
              const PContainerWithImage2TextsAndIcon(
                image: AssetImage(PImages.musicdeioranerie),
                title: PTexts.musicDeTOrangerie,
                subTitle: PTexts.artMusium,
              ),
              const SizedBox(height: 20),
              const Text(
                PTexts.newEvents,
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 4),
              Container(
                width: deviceWidth,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                PTexts.discoveringMaltas,
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                PTexts.baroqueSecrets,
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                PTexts.exibesion,
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          PContainerButtonWithIcon(
                            icon: Icons.east,
                            text: PTexts.fromPlan30,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),

                      //  text, Divider, text
                      const PDateDurationOFTicker(
                        startDayMonth: '20.10',
                        startYear: '2013',
                        endDayMonth: '03.03',
                        endYear: '2014',
                        
                      ),

                      // image
                      const SizedBox(height: 8),
                      Container(
                        height: 310,
                        width: deviceWidth,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(PImages.image),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
