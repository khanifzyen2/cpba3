import 'package:flutter/material.dart';
import './tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      home: MyTab(),
    );
  }
}
