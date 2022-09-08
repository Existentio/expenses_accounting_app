import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class Chart extends StatelessWidget {
  final double currentValue;

  Chart(this.currentValue);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('zzz'),
        Container(
          width: 20,
          margin: EdgeInsets.all(10),
          height: 110,
          child: FAProgressBar(
            direction: Axis.vertical,
            verticalDirection: VerticalDirection.down,
            currentValue: currentValue,
          ),
        ),
        Text('xxx'),
      ],
    );
  }
}
