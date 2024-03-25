import 'package:flutter/material.dart';

class PIconbuttonInCircle extends StatelessWidget {
  const PIconbuttonInCircle({
    super.key, required this.color, required this.icon,
  });
  final Color color;
  final Icon icon;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: color, width: 2),
      ),
      child:
          IconButton(icon: icon,color: color, onPressed: () {}),
    );
  }
}
