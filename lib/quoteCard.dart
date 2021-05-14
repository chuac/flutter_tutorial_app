import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote; // need final keyword for StatelessWidget
  final Function delete;

  QuoteCard({this.quote, this.delete}); // accept parameter and set it to quote

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(quote.text,
                  style: TextStyle(fontSize: 18, color: Colors.black)),
              SizedBox(height: 6),
              Text(quote.author,
                  style: TextStyle(fontSize: 12, color: Colors.black)),
              SizedBox(height: 8),
              TextButton.icon(
                  onPressed: delete,
                  icon: Icon(Icons.delete),
                  label: Text('delete quote'))
            ],
          ),
        ));
  }
}
