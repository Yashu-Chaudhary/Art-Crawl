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
                height: 300,
                width: deviceWidth,
                decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.circular(20)),
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [],
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

