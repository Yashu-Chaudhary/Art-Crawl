import 'package:flutter/material.dart';

class PDate extends StatelessWidget {
  const PDate({
    super.key,
    required this.daymonth,
    required this.year,
  });

  final String daymonth;
  final String year;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          daymonth,
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          year,
        ),
      ],
    );
  }
}
