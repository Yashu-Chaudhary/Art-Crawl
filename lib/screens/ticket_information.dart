import 'package:art_crawl/utils/common/widgets/date_duration_of_ticket.dart';
import 'package:art_crawl/utils/constant/images.dart';
import 'package:art_crawl/utils/constant/string_text.dart';
import 'package:flutter/material.dart';

class TicketInformation extends StatelessWidget {
  const TicketInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const SizedBox(height: 25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PCircleButtonWIthIcon(icon: Icon(Icons.west)),
                  PCircleButtonWIthIcon(icon: Icon(Icons.more_horiz)),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      Container(
                        width: deviceWidth,
                        height: deviceWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage(PImages.versalites),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const PDateDurationOFTicker(
                        startDayMonth: '02.12',
                        endDayMonth: '16.10',
                        startYear: '2023',
                        endYear: '2023',
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        PTexts.theEnchantingArtOfRembrandt,
                        maxLines: 2,
                        style: TextStyle(fontSize: 20),
                      ),
                      const Text(PTexts.mauritshsisTheHagueNetherLands,style: TextStyle(fontSize: 15),)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(children: [
                Container(
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: const Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(PTexts.yourTicket),
                          Icon(Icons.info_outline)
                        ],
                      )
                    ],
                  ),
                )
              ],)
            ],
          ),
        ),
      ),
    );
  }
}

class PCircleButtonWIthIcon extends StatelessWidget {
  const PCircleButtonWIthIcon({
    super.key,
    required this.icon,
    this.color = Colors.black,
    this.onTap,
  });

  final Icon icon;
  final Color? color;
  final Widget? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black, width: 2)),
      child: GestureDetector(onTap: () {}, child: const Icon(Icons.west)),
    );
  }
}
