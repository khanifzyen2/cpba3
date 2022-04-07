import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.grey,
            child: Row(
              //silahkan anda ganti2 nilai MainAxisAlignment
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //silahkan anda ganti2 nilai CrossAxisAlignment
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyBox(),
                MyBox(height: 100),
                MyBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  final double height;
  final double width;
  MyBox({
    Key? key,
    this.width = 50,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(
          width: 2,
          color: Colors.red,
        ),
      ),
    );
  }
}
