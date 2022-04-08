import 'package:flutter/material.dart';

class MyAlign extends StatelessWidget {
  const MyAlign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.red,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child:
                      Container(width: 200, height: 200, color: Colors.yellow),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child:
                      Container(width: 150, height: 150, color: Colors.green),
                ),
                Container(width: 50, height: 50, color: Colors.blue),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
