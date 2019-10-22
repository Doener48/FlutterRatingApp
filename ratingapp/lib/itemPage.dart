import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {

  final String item;
  ItemPage(this.item);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Category: ' + item),),
      body: Center(
        child: Text(item),
      ),
    );
  }
}