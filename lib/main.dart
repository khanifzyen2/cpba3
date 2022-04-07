import 'package:flutter/material.dart';
// import './my_stateful_widget.dart';
// import './padding.dart';
//import './row.dart';
//import './column.dart';
//import './listviewbuilder.dart';
import './listviewseparated.dart';

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
      home: MyListViewSeparated(),
    );
  }
}
