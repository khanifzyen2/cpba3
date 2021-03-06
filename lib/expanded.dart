import 'package:flutter/material.dart';

class MyExpanded extends StatelessWidget {
  const MyExpanded({Key? key}) : super(key: key);

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
                SizedBox(
                  height: 100,
                  child: _blueBox(),
                ),
                Expanded(
                  flex: 2,
                  child: _blueBox(),
                ),
                Expanded(
                  flex: 1,
                  child: _blueBox(),
                ),
                _blueBox(),
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
