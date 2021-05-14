import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    // simulate network request
    await Future.delayed(Duration(seconds: 3), () {
      print('username');
    });

    print('2nd username');
  }

  @override
  void initState() {
    super.initState();
    print('initState ran');
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print('build ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('choose location screen'),
    );
  }
}
