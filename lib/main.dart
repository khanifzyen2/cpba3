//import './homepage.dart';
import 'package:flutter/material.dart';
// import './my_stateful_widget.dart';
// import './padding.dart';
//import './row.dart';
//import './column.dart';
//import './listviewbuilder.dart';
//import './listviewseparated.dart';
// import './expanded.dart';
//import './flexible.dart';
// import './stack.dart';
// import './align.dart';
//import './positioned.dart';
// import './aspectratio.dart';
// import './card.dart';
import './wrap.dart';

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
      home: MyWrap(),
    );
  }
}
