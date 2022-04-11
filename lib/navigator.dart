import 'package:flutter/material.dart';

class MyNavigator extends StatelessWidget {
  const MyNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Page")),
      body: Container(
        color: Colors.amber[100],
        child: Center(
          child: ElevatedButton(
            child: const Text("Next Page"),
            onPressed: () {
              //Navigator.of(context).push(
              //    MaterialPageRoute(builder: (context) => const SecondPage()));
              Navigator.push(
                  context,
                  //MaterialPageRoute(builder: (context) => const SecondPage()));
                  //CupertinoPageRoute(builder: (context) => const SecondPage()));
                  PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => const SecondPage(),
                      transitionsBuilder: (c, a1, a2, child) => FadeTransition(
                            opacity: a1,
                            child: child,
                          ),
                      transitionDuration: const Duration(seconds: 2)));
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
      //appBar: AppBar(title: const Text("Second Page")),
      body: Container(
        color: Colors.green[100],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Second Page"),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    //Navigator.of(context).pop();
                    Navigator.pop(context);
                  },
                  child: const Text("Kembali")),
            ],
          ),
        ),
      ),
    );
  }
}
