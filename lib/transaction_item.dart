import 'package:expenses_accounting_app/transaction.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionItem(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20.0),
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.cyan,
                ),
                child: Text(tx.amount.toString()),
              ),
              Column(children: <Widget>[
                Container(
                  child: Text(
                    tx.title.toString(),
                  ),
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                ),
                Text(tx.date.month.toString() +
                    " " +
                    tx.date.day.toString() +
                    ", " +
                    tx.date.year.toString())
              ])
            ],
          ),
        );
      }).toList(),
    );
  }
}
