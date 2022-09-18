import 'package:expenses_accounting_app/chart_container.dart';
import 'package:expenses_accounting_app/transaction.dart';
import 'package:expenses_accounting_app/transaction_item.dart';
import 'package:flutter/material.dart';

class ExpensesPage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'item 1', amount: 11111111111, date: DateTime.now()),
    Transaction(id: 't2', title: 'item 2', amount: 11111111111, date: DateTime.now()),
    Transaction(
        id: 't3', title: 'item 1', amount: 11111111111, date: DateTime.now()),
    Transaction(
        id: 't4', title: 'item 2', amount: 11111111111, date: DateTime.now()),
    Transaction(
        id: 't5', title: 'item 1', amount: 11111111111, date: DateTime.now()),
    Transaction(
        id: 't6', title: 'item 2', amount: 11111111111, date: DateTime.now())
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
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 500,
                    color: Colors.white,
                    padding: EdgeInsets.all(10),

                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Title',
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Amount',
                            ),
                          ),
                          ElevatedButton(
                            child: const Text('Close BottomSheet'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );

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
    );
  }
}
