import 'package:art_crawl/utils/constant/images.dart';
import 'package:flutter/material.dart';


class PCircleAvatarStack extends StatefulWidget {
  const PCircleAvatarStack({super.key});

  @override
  State<PCircleAvatarStack> createState() => _PCircleAvatarStackState();
}

class _PCircleAvatarStackState extends State<PCircleAvatarStack> {
  List imageArray = [
    PImages.profile,
    PImages.versalites,
    PImages.musicdeioranerie
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Row(
          children: [
            for (int i = 0; i < imageArray.length; i++)
              Align(
                widthFactor: 0.65,
                child: CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.pink,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(imageArray[i]),
                  ),
                ),
              ),
          ],
        ),
        Positioned(
          left: 58,
          child: CircleAvatar(
            radius: 17,
            backgroundColor: Colors.pink,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.black),
              child: const Center(
                child: Text(
                  '+32,989',
                  style: TextStyle(fontSize: 7, color: Colors.white),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
