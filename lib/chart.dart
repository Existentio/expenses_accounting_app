import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class Chart extends StatelessWidget {
  final double progressValue;
  final double expenses;
  final String date;

  Chart({
    required this.expenses,
    required this.progressValue,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(4),
          child: Text(
            expenses.toString(),
          ),
        ),
        Container(
          width: 20,
          margin: EdgeInsets.all(10),
          height: 110,
          child: FAProgressBar(
            direction: Axis.vertical,
            progressColor: Colors.blue,
            backgroundColor: const Color(0x4D9E9EB7),
            verticalDirection: VerticalDirection.down,
            currentValue: progressValue,
          ),
        ),
        Text(date),
      ],
    );
  }
}
