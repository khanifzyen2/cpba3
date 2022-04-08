import 'package:flutter/material.dart';

class MyFlexible extends StatelessWidget {
  const MyFlexible({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.grey,
            height: 100,
            child: Row(
              children: [
                SizedBox(height: 100, child: _blueBox()),
                Flexible(fit: FlexFit.tight, flex: 2, child: _blueBox()),
                Flexible(flex: 1, child: _blueBox()),
                Flexible(flex: 1, child: _blueBox()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _blueBox() {
  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      color: Colors.blue,
    ),
  );
}
