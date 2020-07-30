import 'package:flutter/material.dart';
import 'Entry.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BottomNaavigationBar',
      theme: ThemeData.light(),
      home: Entry(),
    );
  }
}
