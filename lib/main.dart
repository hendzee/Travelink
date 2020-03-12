import 'package:flutter/material.dart';
import 'package:equinox/equinox.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travelink',
      home: Scaffold(
        body: Center(
          child: Text('This is home page.'),
        ),
      ),
    );
  }
}
