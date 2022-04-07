import 'package:flutter/material.dart';

class MyPadding extends StatelessWidget {
  const MyPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          color: Colors.green[100],
          child: const Padding(
            padding: EdgeInsets.all(25),
            child: Text("Hello World"),
          ),
        ),
      ),
    );
  }
}
