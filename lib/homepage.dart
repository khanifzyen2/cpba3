import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.access_alarm),
              title: const Text("Menu Pertama"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Menu Kedua"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.circle_sharp),
              title: const Text("Menu Ketiga"),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Latihan Flutter"),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Ini namanya snackbar")));
            },
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Alert',
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.navigate_next)),
        ],
      ),
      body: const Center(
        child: Text("Halo World"),
      ),
    );
  }
}
