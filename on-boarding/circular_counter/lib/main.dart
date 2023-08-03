import 'package:flutter/material.dart';
import 'counter.dart'; // Import the Counter class from 'counter.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String appTitle = 'Circular Counter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 29, 253, 239),
        appBar: AppBar(title: Text(appTitle)),
        body: Center(
          child: Counter(),
        ),
      ),
    );
  }
}
