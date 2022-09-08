import 'package:expenses_accounting_app/chart.dart';
import 'package:flutter/material.dart';

class ChartContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      elevation: 8,
      child: Row(
        children: [
          Chart(22),
          Chart(33),
          Chart(33),
          Chart(5),
          Chart(77),
          Chart(88),
          Chart(99),
        ],
      ),
    );
  }
}
