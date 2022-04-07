import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.grey,
            child: Column(
              //silahkan anda ganti2 nilai MainAxisAlignment
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //silahkan anda ganti2 nilai CrossAxisAignment
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MyBox(),
                MyBox(width: 100),
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
  final double width;
  final double height;
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
          color: Colors.red,
          width: 2,
        ),
      ),
    );
  }
}
