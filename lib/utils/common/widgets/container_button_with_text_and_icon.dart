import 'package:flutter/material.dart';

class PContainerButtonWithIcon extends StatelessWidget {
  const PContainerButtonWithIcon({
    super.key,
    required this.icon,
    required this.text,
    this.width = 130,
    this.height = 40,
    this.color = Colors.white,
  });
  final IconData icon;
  final String text;
  final double? width;
  final double? height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: color),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(color: color),
              ),
              Icon(
                icon,
                color: color,
                size: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
