import 'package:expenses_accounting_app/chart.dart';
import 'package:flutter/material.dart';

class ChartContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Chart(),
          Chart(),

        ],
      ),
    );
  }
}
