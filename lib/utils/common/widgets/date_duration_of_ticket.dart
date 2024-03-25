import 'package:art_crawl/utils/common/widgets/date.dart';
import 'package:flutter/material.dart';

class PDateDurationOFTicker extends StatelessWidget {
  const PDateDurationOFTicker({
    super.key,
    required this.startDayMonth,
    required this.endDayMonth,
    required this.startYear,
    required this.endYear,
    this.color = Colors.black,
  });

  final String startDayMonth;
  final String startYear;
  final String endYear;
  final String endDayMonth;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PDate(
          daymonth: startDayMonth,
          year: startYear,
          color: color,
        ),

        // divider
        Container(
          height: 2,
          width: deviceWidth * 0.56,
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(color: color),
        ),

        PDate(
          daymonth: endDayMonth,
          year: endYear,color: color,
        )
      ],
    );
  }
}
