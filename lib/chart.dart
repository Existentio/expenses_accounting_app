import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  Chart();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16),
      child: Card(
        child: Column(
          children: [Text('yo'), LinearProgressIndicator(

          )],
        ),
        elevation: 6,
      ),
    );
  }
}
