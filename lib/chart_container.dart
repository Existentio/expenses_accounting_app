import 'package:expenses_accounting_app/chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChartContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      elevation: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Chart(
            expenses: 321001,
            progressValue: 22,
            date: DateFormat.MMMd().format(DateTime.now()),
          ),
          Chart(
            expenses: 1111,
            progressValue: 33,
            date: DateFormat.MMMd().format(DateTime.now()),
          ),
          Chart(
            expenses: 22222,
            progressValue: 44,
            date: DateFormat.MMMd().format(DateTime.now()),
          ),
          Chart(
            expenses: 321001,
            progressValue: 33,
            date: DateFormat.MMMd().format(DateTime.now()),
          ),
          Chart(
            expenses: 321001,
            progressValue: 11,
            date: DateFormat.MMMd().format(DateTime.now()),
          ),
          Chart(
            expenses: 321001,
            progressValue: 44,
            date: DateFormat.MMMd().format(DateTime.now()),
          ),
          Chart(
            expenses: 321001,
            progressValue: 55,
            date: DateFormat.MMMd().format(DateTime.now()),
          ),
        ],
      ),
    );
  }
}
