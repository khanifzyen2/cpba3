import 'package:flutter/material.dart';

class MyTabState extends StatefulWidget {
  const MyTabState({Key? key}) : super(key: key);

  @override
  State<MyTabState> createState() => _MyTabStateState();
}

class _MyTabStateState extends State<MyTabState>
    with SingleTickerProviderStateMixin {
  late TabController _tablController;

  @override
  void initState() {
    super.initState();
    _tablController = TabController(length: 3, vsync: this);
    _tablController.addListener(() {
      //add logic here
      print("hello my friend");
      print("tablController index: ${_tablController.index}");
    });
    // _tablController.dispose();
  }

  @override
  void dispose() {
    _tablController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TabBar Demo"),
        bottom: TabBar(
          controller: _tablController,
          tabs: const [
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_train)),
            Tab(icon: Icon(Icons.directions_bike))
          ],
        ),
      ),
      body: TabBarView(
        controller: _tablController,
        children: const [
          Center(child: Text("Car")),
          Center(child: Text("Transit")),
          Center(child: Text("Bike")),
        ],
      ),
    );
  }
}
