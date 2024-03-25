import 'package:art_crawl/utils/constant/string_text.dart';
import 'package:flutter/material.dart';

class PHeader extends StatelessWidget {
  const PHeader({
    super.key,
    required this.text,
    this.isCircleAvatarImage = false,
    this.image,
  });

  final String text;
  final bool isCircleAvatarImage;
  final AssetImage? image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            isCircleAvatarImage
                ? CircleAvatar(
                    backgroundImage: image,
                  )
                : const Text(''),
            isCircleAvatarImage ? const SizedBox(width: 10) : const Text(""),
            Text(
              text,
              style: const TextStyle(fontSize: 30),
            ),
          ],
        ),
        Container(
          height: 30,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Center(
            child: Text(
              PTexts.menu,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}
