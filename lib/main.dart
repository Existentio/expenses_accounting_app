import 'dart:math';

import 'package:expenses_accounting_app/add_transaction_button.dart';
import 'package:expenses_accounting_app/chart_container.dart';
import 'package:expenses_accounting_app/transaction.dart';
import 'package:expenses_accounting_app/transaction_item.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal expenses',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'item 1', amount: 611111111111, date: DateTime.now()),
    Transaction(id: 't2', title: 'item 2', amount: 3232, date: DateTime.now()),
    Transaction(
        id: 't1', title: 'item 1', amount: 611111111111, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'item 2', amount: 611111111111, date: DateTime.now()),
    Transaction(
        id: 't1', title: 'item 1', amount: 611111111111, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'item 2', amount: 611111111111, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'Add expense',
            onPressed: () {
              // handle the press
            },
          )
        ],
        title: Text('Personal Expenses'),
      ),
      body: Column(
        children: <Widget>[
          SingleChildScrollView(
            child: ChartContainer(),
            scrollDirection: Axis.horizontal,
          ),
          TransactionItem(transactions),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: null,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            label: "Calendar",
            icon: Icon(Icons.calendar_month),
          ),
          BottomNavigationBarItem(
            label: "Expenses",
            icon: Icon(Icons.currency_exchange),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
