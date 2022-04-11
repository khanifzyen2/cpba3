import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyNavigator extends StatelessWidget {
  const MyNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Page")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Next Page"),
          onPressed: () {
            Navigator.push(
                context,
                //MaterialPageRoute(builder: (context) => const SecondPage()));
                CupertinoPageRoute(builder: (context) => const SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: const Center(child: Text("Second Page")),
    );
  }
}
