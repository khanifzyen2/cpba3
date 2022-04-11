import 'package:flutter/material.dart';

class MyStateful extends StatefulWidget {
  const MyStateful({Key? key}) : super(key: key);

  @override
  State<MyStateful> createState() => _MyStatefulState();
}

class _MyStatefulState extends State<MyStateful> {
  String text = "Ini adalah teks";

  @override
  void initState() {
    super.initState();
    getProsesStartup().then((value) {
      print("async proses finished");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StatefulWidget Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      text = text.toUpperCase();
                    });
                  },
                  child: const Text("Besar"),
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      text = text.toLowerCase();
                    });
                  },
                  child: const Text("Kecil"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future getProsesStartup() async {
    Future.delayed(const Duration(seconds: 1));
  }
}
