import 'package:flutter/material.dart';

class PDate extends StatelessWidget {
  const PDate({
    super.key,
    required this.daymonth,
    required this.year,
    this.color = Colors.black,
  });

  final String daymonth;
  final String year;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          daymonth,
          style: TextStyle(fontSize: 20, color: color),
        ),
        Text(
          year,
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}
