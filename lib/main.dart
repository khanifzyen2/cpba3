//import './homepage.dart';
// import './my_stateful_widget.dart';
// import './padding.dart';
//import './row.dart';
//import './column.dart';
//import './listviewbuilder.dart';
//import './listviewseparated.dart';
// import './expanded.dart';
//import './flexible.dart';
// import './stack.dart';
// import './align.dart';
//import './positioned.dart';
// import './aspectratio.dart';
// import './card.dart';
// import './wrap.dart';
// import './stateful.dart';
// import './navigator.dart';
import 'package:flutter/material.dart';
import './navigator2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      // onGenerateRoute: (settings) {
      //   if (settings.name == '/second') {
      //     Object? args = settings.arguments;
      //     return PageRouteBuilder(
      //         settings: settings,
      //         pageBuilder: (c, a1, a2) => SecondPage(title: args),
      //         transitionsBuilder: (c, a1, a2, child) => FadeTransition(
      //               opacity: a1,
      //               child: child,
      //             ),
      //         transitionDuration: const Duration(seconds: 2));
      //   } else {
      //     return null;
      //   }
      // },
      initialRoute: '/first',
      routes: {
        '/first': (context) => const FirstPage(),
        '/second': (context) => const SecondPage(),
      },
      //home: FirstPage(),
    );
  }
}
