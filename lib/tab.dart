import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  const MyTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tab Demo"),
          bottom: const TabBar(
            //indicatorSize: TabBarIndicatorSize.label,
            //indicatorColor: Colors.red,
            indicatorWeight: 5,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white30,
            indicator: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            //isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Ini adalah mobil")),
            Center(child: Text("Ini adalah transit")),
            Center(child: Text("Ini adalah sepeda")),
          ],
        ),
      ),
    );
  }
}
