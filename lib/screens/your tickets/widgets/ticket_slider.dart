import 'package:art_crawl/screens/your%20tickets/widgets/ticket.dart';
import 'package:art_crawl/utils/constant/images.dart';
import 'package:art_crawl/utils/constant/string_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class PTicketSlider extends StatelessWidget {
  const PTicketSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Swiper(
      itemBuilder: (context, index) {
        return const PTickets(
          image: AssetImage(PImages.versalites),
          title: PTexts.renaissanceRevived,
          subTitle: PTexts.uffiziGalleryFlorenceItaly, color: Colors.red,
        );
      },
      itemCount: 3,
      pagination: const SwiperPagination(),
      control: const SwiperControl(),
    );
  }
}
