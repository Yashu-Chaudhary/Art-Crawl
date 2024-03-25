import 'package:art_crawl/utils/common/widgets/icon_button_in_circle.dart';
import 'package:flutter/material.dart';

class PContainerWithImage2TextsAndIcon extends StatelessWidget {
  const PContainerWithImage2TextsAndIcon({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final AssetImage image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 80,
      width: deviceWidth,
      decoration: BoxDecoration(
        color: Colors.orange[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(color: Colors.white, fontSize: 17)),
                    Text(subTitle, style: const TextStyle(color: Colors.white)),
                  ],
                )
              ],
            ),

            // round Icon
            const PIconbuttonInCircle(
              color: Colors.white,
              icon: Icon(Icons.qr_code_scanner),
            )
          ],
        ),
      ),
    );
  }
}
