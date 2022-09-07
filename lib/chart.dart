import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('zzz'),
        RotatedBox(
          quarterTurns: 1,
          child: FAProgressBar(
            direction: Axis.vertical,
            currentValue: 22,
            displayText: '%',
          ),
        ),
        Text('xxx'),
      ],
    );
  }
}
