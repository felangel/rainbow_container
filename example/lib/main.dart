import 'package:flutter/material.dart';
import 'package:rainbow_container/src/rainbow_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RainbowContainer(
      child: Text('Hello World'),
    );
  }
}
