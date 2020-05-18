import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BobPage(),
      ),
    );

class BobPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Center(child: Text('Magic 8 Bob')),
      ),
      body: Bob(),
    );
  }
}

class Bob extends StatefulWidget {
  @override
  _BobState createState() => _BobState();
}

class _BobState extends State<Bob> {
  int bobNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset('images/bob$bobNumber.png'),
            )
      ),
        floatingActionButton: FloatingActionButton(
          child: Text('Ask'),
          backgroundColor: Colors.black54,
          onPressed: () {
            setState(() {
              bobNumber = Random().nextInt(7) + 1;
            });
          },
        ),
    );
  }
}
