import 'package:flutter/material.dart';

class AddTransactionButton extends StatelessWidget {
  const AddTransactionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        child: Text('+'),
        onPressed: null,
      ),
    );
  }
}
