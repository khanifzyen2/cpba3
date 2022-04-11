import 'package:flutter/material.dart';

class MyWrap extends StatelessWidget {
  const MyWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Wrap(
          spacing: 7,
          runSpacing: 10,
          runAlignment: WrapAlignment.end,
          // direction: Axis.vertical,
          children: const [
            MyChip(title: "android", avatar: "A"),
            MyChip(title: "iOS", avatar: "i"),
            MyChip(title: "web", avatar: "W"),
            MyChip(title: "Windows", avatar: "W"),
            MyChip(title: "Linux", avatar: "L"),
          ],
        ),
      ),
    );
  }
}

class MyChip extends StatelessWidget {
  final String title;
  final String avatar;
  const MyChip({
    Key? key,
    required this.title,
    required this.avatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(title),
      avatar: CircleAvatar(
        child: Text(avatar),
      ),
    );
  }
}
