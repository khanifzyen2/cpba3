import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Page")),
      body: Container(
        color: Colors.red,
        child: Center(
          child: ElevatedButton(
            child: const Text("First Page"),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
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
      body: Container(
        color: Colors.green,
        child: Center(
          child: ElevatedButton(
            child: const Text("Second Page"),
            onPressed: () {
              Navigator.pushNamed(context, '/third');
              // Navigator.pushReplacementNamed(context, '/third');
            },
          ),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third Page")),
      body: Container(
        color: Colors.purple,
        child: Center(
          child: ElevatedButton(
            child: const Text("Third Page"),
            onPressed: () {
              Navigator.pushNamed(context, '/fourth');
            },
          ),
        ),
      ),
    );
  }
}

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fourth Page")),
      body: Container(
        color: Colors.purple,
        child: Center(
          child: ElevatedButton(
            child: const Text("Fourth Page"),
            onPressed: () {
              // Navigator.pushNamed(context, '/first');
              //Navigator.pushNamedAndRemoveUntil(
              //    context, '/first', (route) => false);
              Navigator.pushNamedAndRemoveUntil(
                  context, '/first', ModalRoute.withName('/second'));
            },
          ),
        ),
      ),
    );
  }
}
