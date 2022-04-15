import 'package:flutter/material.dart';
import './navigator3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      initialRoute: '/first',
      routes: {
        '/first': (context) => const FirstPage(),
        '/second': (context) => const SecondPage(),
        '/third': (context) => const ThirdPage(),
        '/fourth': (contex) => const FourthPage(),
      },
    );
  }
}
