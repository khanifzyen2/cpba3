import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

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
              Navigator.pushNamed(context, '/second',
                  arguments: 'This is sec sec args');
            },
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final Object? title;
  const SecondPage({Key? key, this.title = 'Second Page'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text(args.toString())),
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
