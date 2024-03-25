import 'package:art_crawl/screens/your%20tickets/widgets/ticket.dart';
import 'package:art_crawl/utils/common/header.dart';
import 'package:art_crawl/utils/constant/images.dart';
import 'package:art_crawl/utils/constant/string_text.dart';
import 'package:flutter/material.dart';

class YourTickets extends StatelessWidget {
  const YourTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              PHeader(text: PTexts.yourTickets),
              SizedBox(height: 20),
              // PTicketSlider()
              PTickets(image: AssetImage(PImages.versalites),title: PTexts.renaissanceRevived,subTitle:  PTexts.uffiziGalleryFlorenceItaly, color: Colors.red,)
            ],
          ),
        ),
      ),
    );
  }
}