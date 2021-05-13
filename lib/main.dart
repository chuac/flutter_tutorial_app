import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30),
              child: Text('one'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              padding: EdgeInsets.all(30),
              child: Text('two'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(30),
              child: Text('three'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
