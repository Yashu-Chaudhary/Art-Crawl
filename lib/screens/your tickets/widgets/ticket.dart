import 'package:art_crawl/screens/ticket_information.dart';
import 'package:art_crawl/screens/your%20tickets/your_tickets.dart';
import 'package:art_crawl/utils/common/widgets/date_duration_of_ticket.dart';
import 'package:art_crawl/utils/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PTickets extends StatelessWidget {
  const PTickets({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.color,
    this.onPressed = const YourTickets(),
  });
  final AssetImage image;
  final String title;
  final String subTitle;
  final Color color;
  final Widget? onPressed;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 30, color: Colors.white),
            ),
            Text(
              subTitle,
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(height: 25),
            GestureDetector(
              // make this on tab accoring to ticket.
              onTap: () =>Get.to(()=>const TicketInformation()),
              child: Container(
                width: deviceWidth,
                height: deviceWidth * 1.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage(PImages.versalites), fit: BoxFit.cover),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                PDateDurationOFTicker(
                  startDayMonth: '02.12',
                  endDayMonth: '16.10',
                  startYear: '2023',
                  endYear: '2023',
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
