import 'package:flutter/material.dart';
import 'package:rainbow_container/src/rainbow_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RainbowContainer(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            width: 100,
            height: 100,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {}),
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
