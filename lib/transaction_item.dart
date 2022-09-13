import 'package:expenses_accounting_app/transaction.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionItem(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        // shrinkWrap: true,
        itemCount: transactions.length,
        // prototypeItem: ListTile(
        //   title: Text(transactions.first.title.toString()),
        // ),
        // prototypeItem: ListView(
        //    child: Text(transactions.first.title)
        // ),
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(6),
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    child: Container(
                      width: 70,
                      height: 70,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: Text(
                        transactions[index].amount.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                Expanded(
                  child: Column(children: <Widget>[
                    Container(
                      child: Text(transactions[index].title),
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                    ),
                    Text(transactions[index].date.toString())
                  ]),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'sssssss',
                      textAlign: TextAlign.end,
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
